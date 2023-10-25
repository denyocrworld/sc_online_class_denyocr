// main.go
package main

import (
	"fmt"
	"net/http"
	"strings"
	"sync"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
)

var upgrader = websocket.Upgrader{
	ReadBufferSize:  1024,
	WriteBufferSize: 1024,
}

var clientsMu sync.Mutex
var clients = make(map[*websocket.Conn]string) // Daftar klien yang terhubung dengan pasangan pengguna yang sesuai

type User struct {
	ID    int    `json:"id"`
	Email string `json:"email"`
	Name  string `json:"name"`
}

var users = []User{}

func main() {
	r := gin.Default()

	// Membuat konfigurasi CORS
	config := cors.DefaultConfig()
	config.AllowOrigins = []string{"*"} // Atur origins yang diizinkan sesuai kebutuhan Anda

	// Terapkan middleware CORS
	r.Use(cors.New(config))

	// Endpoint untuk login
	r.POST("/login", func(c *gin.Context) {
		var user User
		if err := c.ShouldBindJSON(&user); err != nil {
			fmt.Println(err)
			fmt.Println("WHY?")
			c.JSON(http.StatusBadRequest, gin.H{"message": "Invalid request"})
			return
		}

		// Menambahkan pengguna ke dalam daftar
		users = append(users, user)

		c.JSON(http.StatusOK, user)
	})

	r.GET("/users", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"data": users})
	})

	// Routes
	r.GET("/", func(c *gin.Context) {
		http.ServeFile(c.Writer, c.Request, "public/index.html")
	})

	r.GET("/1003", func(c *gin.Context) {
		http.ServeFile(c.Writer, c.Request, "public/1003.html")
	})

	// Routes
	r.GET("/:user", func(c *gin.Context) {
		user := c.Param("user")
		http.ServeFile(c.Writer, c.Request, "public/"+user+".html")
	})

	// WebSocket endpoint with dynamic user IDs
	r.GET("/ws/:user1/:user2", func(c *gin.Context) {
		user1 := c.Param("user1")
		user2 := c.Param("user2")
		handleWebSocket(c.Writer, c.Request, user1, user2)
	})

	r.Run(":8080")
}

func handleWebSocket(w http.ResponseWriter, r *http.Request, user1, user2 string) {
	conn, err := upgrader.Upgrade(w, r, nil)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer conn.Close()

	// Mengunci akses ke clients
	clientsMu.Lock()
	clients[conn] = user1 + "-" + user2 // Menyimpan informasi pasangan pengguna
	clientsMu.Unlock()

	for {
		messageType, p, err := conn.ReadMessage()
		if err != nil {
			fmt.Println(err)
			clientsMu.Lock()
			delete(clients, conn)
			clientsMu.Unlock()
			return
		}

		// Mengirim pesan hanya kepada klien yang memiliki pasangan pengguna yang sesuai
		clientsMu.Lock()
		for client, pair := range clients {
			if strings.Contains(pair, user1) && strings.Contains(pair, user2) {
				if err := client.WriteMessage(messageType, p); err != nil {
					fmt.Println(err)
					delete(clients, client)
				}
			}
		}
		clientsMu.Unlock()
	}
}
