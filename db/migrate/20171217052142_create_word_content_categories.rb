class CreateWordContentCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :word_content_categories do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
