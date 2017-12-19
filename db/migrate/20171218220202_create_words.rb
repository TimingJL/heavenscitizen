class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :title
      t.string :content
      t.integer :link_id
      t.integer :service_time_category_id
      t.integer :service_type_category_id
      t.integer :word_content_category_id

      t.timestamps
    end
  end
end
