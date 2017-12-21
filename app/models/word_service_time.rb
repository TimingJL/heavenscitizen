class WordServiceTime < ApplicationRecord
  belongs_to :word
  belongs_to :service_time_category
end
