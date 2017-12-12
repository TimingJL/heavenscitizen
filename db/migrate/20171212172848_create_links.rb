class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :titile
      t.string :description
      t.string :favicon
      t.string :image
      t.string :announce_date

      t.timestamps
    end
  end
end
