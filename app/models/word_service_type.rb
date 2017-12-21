class WordServiceType < ApplicationRecord
  belongs_to :word
  belongs_to :service_type_category
end
