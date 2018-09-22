User.create!([
  {first_name: "Jocelyn", last_name: "Moya", email: "je@gmail.com", password_digest: "password", password_confirmation:"password"}
])
Board.create!([
  {user_id: 1, context: "daily"},
  {user_id: 1, context: "food"},
  {user_id: 1, context: "clothing"},
  {user_id: 1, context: "hygiene"},
  {user_id: 1, context: "activities"},
  {user_id: 1, context: "family"}
  ])

Word.create!([
  {content: "I", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/I.png"},
  {content: "You", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/you.png"},
  {content: "Want", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to%20want.png"},
  {content: "Eat", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to%20eat_1.png"},
  {content: "hello", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/hello.png"},
  {content: "Avocado", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/avocado.png"},
  {content: "Tomato", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/tomato.svg"},
  {content: "cracker", part_of_speech: 2, symbol: "https://recommender.com/sites/default/files/product-images/19/bits.jpg"},
  {content: "STOP", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/sclera/stop.png"},
  {content: "DONE", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/sclera/gesture done.png"},
  {content: "again", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/noun-project/reload_622_669122.svg"},
  {content: "swing", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/push_7.png"},
  {content: "cup", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/cup non spill.svg"},
  {content: "drink", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to drink.png"},
  {content: "sleep", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to put to bed.png"},
  {content: "bathroom", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/men's bathroom_1.png"},
  {content: "toilet", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/toilet bowl.png"},
  {content: "shower", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to have a shower.png"},
  {content: "teeth", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/brush teeth.png"},
  {content: "wash hands", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to wash one's hands.png"},
  {content: "clothes", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/clothes male.svg"},
  {content: "brush hair", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/brush hair , to.svg"},
  {content: "trampoline", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/trampoline _1.png"},
  {content: "swim", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/swimming_2.png"},
  {content: "Mom", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/mother.png"},
  {content: "Dad", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/dad.png"},
  {content: "sister", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/little girl.png"},
  {content: "big sister", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/noun-project/Woman-1f8578f68c.svg"},
  {content: "aunt", part_of_speech: 0, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/woman_2.png"},
  {content: "grandma", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/grandma.png"},
  {content: "grandpa", part_of_speech: 0, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/grandpa.png"},
  {content: "go", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to walk_2.png"},
  {content: "school", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/teacher (female)_1.png"},
  {content: "toys", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/toys.png"},
  {content: "clean-up", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to pick up the toys.png"},
  {content: "thanks", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/thanks.png"},
  {content: "play", part_of_speech: 2, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/to play.png"},
  {content: "swimsuit", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/swimsuit_1.png"},
  {content: "shoes", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/sports shoes.png"},
  {content: "shirt", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/noun-project/t-shirt_410_g.svg"},
  {content: "pants", part_of_speech: nil, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/trousers_1.png"},
  {content: "jacket", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/jacket_1.png"},
  {content: "hat", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/bobble hat.svg"},
  {content: "sandwich", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/mulberry/sandwich.svg"},
  {content: "fruit", part_of_speech: 1, symbol: "https://d18vdu4p71yql0.cloudfront.net/libraries/arasaac/fruits_1.png"}
])



BoardWord.create!([
  {word_id: 1, board_id: 1},
  {word_id: 1, board_id: 2},
  {word_id: 1, board_id: 3},
  {word_id: 1, board_id: 4},
  {word_id: 1, board_id: 5},
  {word_id: 1, board_id: 6},
  {word_id: 2, board_id: 1},
  {word_id: 2, board_id: 2},
  {word_id: 2, board_id: 3},
  {word_id: 2, board_id: 4},
  {word_id: 2, board_id: 5},
  {word_id: 2, board_id: 6},
  {word_id: 3, board_id: 1},
  {word_id: 3, board_id: 2},
  {word_id: 3, board_id: 3},
  {word_id: 3, board_id: 4},
  {word_id: 3, board_id: 5},
  {word_id: 3, board_id: 6},
  {word_id: 4, board_id: 1},
  {word_id: 4, board_id: 2},
  {word_id: 4, board_id: 6},
  {word_id: 11, board_id: 2},
  {word_id: 13, board_id: 2},
  {word_id: 15, board_id: 2},
  {word_id: 16, board_id: 2},
  {word_id: 18, board_id: 2},
  {word_id: 18, board_id: 1},
  {word_id: 18, board_id: 3},
  {word_id: 18, board_id: 4},
  {word_id: 18, board_id: 5},
  {word_id: 19, board_id: 1},
  {word_id: 19, board_id: 3},
  {word_id: 19, board_id: 4},
  {word_id: 19, board_id: 5},
  {word_id: 19, board_id: 2},
  {word_id: 20, board_id: 5},
  {word_id: 21, board_id: 2},
  {word_id: 22, board_id: 1},
  {word_id: 23, board_id: 1},
  {word_id: 24, board_id: 4},
  {word_id: 24, board_id: 1},
  {word_id: 25, board_id: 4},
  {word_id: 26, board_id: 4},
  {word_id: 27, board_id: 4},
  {word_id: 28, board_id: 4},
  {word_id: 29, board_id: 3},
  {word_id: 30, board_id: 4},
  {word_id: 32, board_id: 5},
  {word_id: 33, board_id: 5},
  {word_id: 41, board_id: 1},
  {word_id: 41, board_id: 5},
  {word_id: 42, board_id: 5},
  {word_id: 43, board_id: 5},
  {word_id: 44, board_id: 5},
  {word_id: 19, board_id: 6},
  {word_id: 34, board_id: 6},
  {word_id: 35, board_id: 6},
  {word_id: 36, board_id: 6},
  {word_id: 37, board_id: 6},
  {word_id: 38, board_id: 6},
  {word_id: 39, board_id: 6},
  {word_id: 40, board_id: 6},
  {word_id: 45, board_id: 1},
  {word_id: 46, board_id: 1},
  {word_id: 47, board_id: 3},
  {word_id: 48, board_id: 3},
  {word_id: 49, board_id: 3},
  {word_id: 50, board_id: 3},
  {word_id: 51, board_id: 3},
  {word_id: 52, board_id: 3},
  {word_id: 53, board_id: 2},
  {word_id: 54, board_id: 2}
])

