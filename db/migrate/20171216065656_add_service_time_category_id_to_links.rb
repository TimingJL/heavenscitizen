class AddServiceTimeCategoryIdToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :service_time_category_id, :integer
    add_column :service_time_categories, :link_id, :integer
  end
end
