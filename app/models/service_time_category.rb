class ServiceTimeCategory < ApplicationRecord
  has_many :links_service_times
  has_many :links, through: :links_service_times, dependent: :destroy
end
