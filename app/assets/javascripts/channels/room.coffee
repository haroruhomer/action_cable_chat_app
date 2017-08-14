App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log "You are connected"

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log "You are disconnected"

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    alert data.content
