class Link < ApplicationRecord
  belongs_to :user

  has_many :links_service_times
  has_many :service_time_categories, through: :links_service_times
end
