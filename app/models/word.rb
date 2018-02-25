class Word < ApplicationRecord
  has_many :board_words
  has_many :boards, through: :board_words
end
