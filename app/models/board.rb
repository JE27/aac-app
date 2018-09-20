class Board < ApplicationRecord
  has_many :board_words
  has_many :words, through: :board_words
  belongs_to :user, optional: true

end
