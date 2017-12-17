class WordContentCategory < ApplicationRecord
  has_many :links_word_contents
  has_many :links, through: :links_word_contents
end
