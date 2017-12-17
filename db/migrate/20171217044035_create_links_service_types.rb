class CreateLinksServiceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :links_service_types do |t|
      t.references :link, foreign_key: true
      t.references :service_type_category, foreign_key: true

      t.timestamps
    end
  end
end
