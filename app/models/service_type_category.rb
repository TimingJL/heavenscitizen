class ServiceTypeCategory < ApplicationRecord
  has_many :links_service_types
  has_many :links, through: :links_service_types, dependent: :destroy

  has_many :word_service_types
  has_many :words, through: :word_service_types, dependent: :destroy 
end
