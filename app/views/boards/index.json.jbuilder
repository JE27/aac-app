jjson.array! @boards.each do |board|
  json.id board.id
  json.user_id board.user_id
  json.context board.context
end