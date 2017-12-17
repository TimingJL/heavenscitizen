class Link < ApplicationRecord
  belongs_to :user

  #Link Model relationship Service Time Cateogry Model
  has_many :links_service_times
  has_many :service_time_categories, through: :links_service_times

  #Link Model relationship Service Type Cateogry Model
  has_many :links_service_types
  has_many :service_type_categories, through: :links_service_types
end
