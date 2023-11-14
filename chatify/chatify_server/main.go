package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"net/http"
	"os"
	"strings"
	"sync"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"github.com/gorilla/websocket"
)

var upgrader = websocket.Upgrader{
	CheckOrigin: func(r *http.Request) bool {
		return true
	},
}

type Message struct {
	ID            string `json:"id"`
	Participants  string `json:"participants"`
	Message       string `json:"message"`
	AttachmentURL string `json:"attachment_url"`
	SenderID      string `json:"sender_id"`
	ReceiverID    string `json:"receiver_id"`
}

var messages []Message
var messagesMu sync.Mutex

func handleMessages(user string, ws *websocket.Conn) {
	for {
		var message Message
		err := ws.ReadJSON(&message)
		if err != nil {
			log.Printf("Error reading message: %v", err)
			break
		}

		message.ID = uuid.New().String()
		message.Participants = fmt.Sprintf("%s-%s", message.SenderID, message.ReceiverID)

		saveMessage(message)
		broadcastMessage(message, user, ws)
	}
}

func main() {
	r := gin.Default()

	r.GET("/ws/:user", func(c *gin.Context) {
		user := c.Param("user")
		ws, err := upgrader.Upgrade(c.Writer, c.Request, nil)
		if err != nil {
			log.Fatal(err)
		}

		sendChatHistory(user, ws)

		// Memulai goroutine untuk menangani pesan dari koneksi WebSocket
		go handleMessages(user, ws)
	})

	r.GET("/", func(c *gin.Context) {
		c.File("index.html")
	})

	r.Run(":8080")
}

func saveMessage(message Message) {
	messagesMu.Lock()
	defer messagesMu.Unlock()

	messages = append(messages, message)

	// Simpan pesan ke dalam file CSV
	if err := saveMessagesToCSV(messages); err != nil {
		log.Printf("Error saving messages to CSV: %v", err)
	}
}

func sendChatHistory(user string, ws *websocket.Conn) {
	messagesMu.Lock()
	defer messagesMu.Unlock()

	// Mengirimkan riwayat chat kepada pengguna yang baru terhubung
	for _, message := range messages {
		if strings.Contains(message.Participants, user) {
			if err := ws.WriteJSON(message); err != nil {
				log.Printf("Error sending message: %v", err)
			}
		}
	}
}

func broadcastMessage(message Message, user string, ws *websocket.Conn) {
	messagesMu.Lock()
	defer messagesMu.Unlock()

	for _, client := range clients {
		if client != ws {
			if err := client.WriteJSON(message); err != nil {
				log.Printf("Error broadcasting message: %v", err)
			}
		}
	}
}

var clients []*websocket.Conn

func saveMessagesToCSV(messages []Message) error {
	file, err := os.Create("messages.csv")
	if err != nil {
		return err
	}
	defer file.Close()

	writer := csv.NewWriter(file)
	defer writer.Flush()

	for _, message := range messages {
		record := []string{
			message.ID,
			message.Participants,
			message.Message,
			message.AttachmentURL,
			message.SenderID,
			message.ReceiverID,
		}
		if err := writer.Write(record); err != nil {
			return err
		}
	}

	return nil
}
