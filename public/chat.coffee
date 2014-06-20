socket = io()
$('form').submit () ->
    return false if $('#m').val() is ''
    socket.emit 'chat message', $('#m').val()
    $('#m').val('')
    return false

socket.on 'chat message', (msg) ->
    $('#messages').append($('<li>').text(msg))

#$('#registeroption').click () ->
#    alert 'test'

$('#registerbutton').click () ->
    console.log 'button clicked'
    socket.emit 'chat message', $('#username').val()

$('.popover-markup>.trigger').popover({
    html: 'true'
    title: () ->
        return $(this).parent().find('.head').html()
    content: () ->
        $(this).find('.content').find('#registerbutton').click () ->
            console.log 't'
            socket.emit 'chat message', $('#username').val()

        return $(this).parent().find('.content').html()
    placement: 'left'
})




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