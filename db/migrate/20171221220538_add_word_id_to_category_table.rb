class AddWordIdToCategoryTable < ActiveRecord::Migration[5.1]
  def change
    add_column :service_time_categories, :word_id, :integer
    add_column :service_type_categories, :word_id, :integer
    add_column :word_content_categories, :word_id, :integer
  end
end
