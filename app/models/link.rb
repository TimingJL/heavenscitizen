class Link < ApplicationRecord
  # belongs_to :user

  #Link Model relationship Service Time Cateogry Model
  has_many :links_service_times
  has_many :service_time_categories, through: :links_service_times, dependent: :destroy

  #Link Model relationship Service Type Cateogry Model
  has_many :links_service_types
  has_many :service_type_categories, through: :links_service_types, dependent: :destroy

  #Link Model relationship Word Content Cateogry Model
  has_many :links_word_contents
  has_many :word_content_categories, through: :links_word_contents, dependent: :destroy

  #word
  has_many :words

end
