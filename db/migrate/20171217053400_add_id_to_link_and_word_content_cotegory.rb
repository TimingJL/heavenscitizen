class AddIdToLinkAndWordContentCotegory < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :word_content_category_id, :integer
    add_column :word_content_categories, :link_id, :integer
  end
end
