const express = require('express');
const http = require('http');
const WebSocket = require('ws');
const sqlite3 = require('sqlite3').verbose();
const { v4: uuidv4 } = require('uuid');

const app = express();
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

const db = new sqlite3.Database('./chat.db', err => {
    if (err) {
        return console.error(err.message);
    }
    console.log('Terhubung ke database SQLite');
    createTable();
});

function createTable() {
    const createTableQuery = `
        CREATE TABLE IF NOT EXISTS messages (
          id TEXT PRIMARY KEY,
          participants TEXT,
          message TEXT,
          attachment_url TEXT,
          sender_id TEXT
        )
    `;
    db.run(createTableQuery, err => {
        if (err) {
            return console.error('Error creating table:', err.message);
        }
        console.log('Tabel pesan dibuat atau sudah ada.');
    });
}

wss.on('connection', (ws, req) => {
    const user = req.url.split('/')[1];
    sendChatHistory(user, ws);

    ws.on('message', message => {
        const parsedMessage = JSON.parse(message);
        const participants = `${parsedMessage.sender_id}-${parsedMessage.receiver_id}`;

        const userMessage = {
            id: uuidv4(),
            participants,
            message: parsedMessage.message,
            attachment_url: parsedMessage.attachment_url,
            sender_id: parsedMessage.sender_id,
            receiver_id: parsedMessage.receiver_id
        };

        saveMessage(userMessage);
        broadcastMessage(userMessage);
    });

    console.log(`Pengguna ${user} terhubung.`);
});

function saveMessage(userMessage) {
    const insertQuery = 'INSERT INTO messages (id, participants, message, attachment_url, sender_id) VALUES (?, ?, ?, ?, ?)';
    db.run(insertQuery, [userMessage.id, userMessage.participants, userMessage.message, userMessage.attachment_url, userMessage.sender_id], err => {
        if (err) {
            console.error('Error inserting message:', err.message);
        }
    });
}

function sendChatHistory(user, ws) {
    const selectQuery = 'SELECT * FROM messages WHERE participants LIKE ?';
    const searchPattern = `%${user}%`;
    db.all(selectQuery, [searchPattern], (err, rows) => {
        if (err) {
            return console.error('Error fetching chat history:', err.message);
        }
        rows.forEach(row => {
            ws.send(JSON.stringify(row));
        });
    });
}

function broadcastMessage(userMessage) {
    wss.clients.forEach(client => {
        if (client.readyState === WebSocket.OPEN && userMessage.participants.includes(client.protocol)) {
            client.send(JSON.stringify(userMessage));
        }
    });
}

app.get('/', (req, res) => {
    res.sendFile(`${__dirname}/index.html`);
});

server.listen(8080, () => {
    console.log('Server berjalan di port 8080');
});
