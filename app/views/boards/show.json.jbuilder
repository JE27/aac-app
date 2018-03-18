  json.id @board.id
  json.user_id @board.user_id
  json.context @board.context.upcase

  json.words @board.words
 