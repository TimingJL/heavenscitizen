class CreateServiceTimeCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :service_time_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
