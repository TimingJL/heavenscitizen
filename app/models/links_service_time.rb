class LinksServiceTime < ApplicationRecord
  belongs_to :link
  belongs_to :service_time_category
end
