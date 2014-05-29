app = require('express')()
http = require('http').Server(app)
io = require('socket.io')(http)

app.get '/', (req, res) ->
    res.sendfile('index.html')

io.on 'connection', (socket) ->
    console.log 'a user connected'

    socket.on 'chat message', (msg) ->
        console.log 'message: ' + msg
        io.emit('chat message', msg);

http.listen 3000, () ->
    console.log('connected on port 3000')
