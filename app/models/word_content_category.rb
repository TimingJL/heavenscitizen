class WordContentCategory < ApplicationRecord
  has_many :links_word_contents
  has_many :links, through: :links_word_contents, dependent: :destroy

  has_many :word_word_contents
  has_many :words, through: :word_word_contents, dependent: :destroy 
end
