class LinksServiceType < ApplicationRecord
  belongs_to :link
  belongs_to :service_type_category
end
