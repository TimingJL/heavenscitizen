class AddIdToLinksAndServiceTypeTable < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :service_type_category_id, :integer
    add_column :service_type_categories, :link_id, :integer
  end
end
