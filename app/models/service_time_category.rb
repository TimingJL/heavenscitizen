class ServiceTimeCategory < ApplicationRecord
  has_many :links_service_times
  has_many :links, through: :links_service_times, dependent: :destroy

  has_many :word_service_times
  has_many :words, through: :word_service_times, dependent: :destroy  
end
