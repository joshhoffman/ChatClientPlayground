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

registerButtonHandler = () ->
    console.log 'button clicked'
    socket.emit 'register user', $('#username').val()
    $('.popover-markup>trigger').popover('hide')

$().on('click', () ->
    $('.popover-code').popover('hide');
)

$('.popover-markup>.trigger').popover({
    html: 'true'
    title: () ->
        return $(this).parent().find('.head').html()
    content: () ->
        return $(this).parent().find('.content').html()
    placement: 'left'
}).parent().delegate('#registerbutton', 'click', registerButtonHandler)




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