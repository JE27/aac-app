class BoardWord < ApplicationRecord
  belongs_to :board 
  belongs_to :word
end
