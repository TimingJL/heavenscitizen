class CreateServiceTypeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :service_type_categories do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
