# This file defines helpers in a protected namespace. They won't be accessible anywhere 
# but containers that explicitly require them using `@helpers 'Pirates'`. So does
# `widgets/title_editor.js.coffee`
Joosy.helpers 'Pirates', ->
  
  # Typical helper definition
  @piratish = (text) -> text + " yarrr!"