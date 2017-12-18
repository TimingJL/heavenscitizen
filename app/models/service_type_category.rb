class ServiceTypeCategory < ApplicationRecord
  has_many :links_service_types
  has_many :links, through: :links_service_types, dependent: :destroy
end
