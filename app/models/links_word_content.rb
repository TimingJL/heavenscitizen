class LinksWordContent < ApplicationRecord
  belongs_to :link
  belongs_to :word_content_category
end
