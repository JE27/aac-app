json.array! @words.each do |word|
  json.id word.id
  json.content word.content
  json.part_of_speech word.part_of_speech
  json.symbol word.symbol
end