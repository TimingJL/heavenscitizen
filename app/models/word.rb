class Word < ApplicationRecord
  belongs_to :link

  has_many :word_service_times
  has_many :service_time_categories, through: :word_service_times

  has_many :word_service_types
  has_many :service_type_categories, through: :word_service_types

  has_many :word_word_contents
  has_many :word_content_categories, through: :word_word_contents
end
