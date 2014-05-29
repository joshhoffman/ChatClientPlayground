socket = io()
$('form').submit () ->
    socket.emit 'chat message', $('#m').val()
    $('#m').val('')
    return false
socket.on 'chat message', (msg) ->
    $('#messages').append($('<li>').text(msg))





###<script>
    var socket = io();
    $('form').submit(function() {
        socket.emit('chat message', $('#m').val());
        $('#m').val('');
        return false;
    });
    socket.on('chat message', function(msg) {
        $('#messages').append($('<li>').text(msg));
    });
</script>
###