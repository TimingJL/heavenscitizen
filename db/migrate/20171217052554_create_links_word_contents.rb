class CreateLinksWordContents < ActiveRecord::Migration[5.1]
  def change
    create_table :links_word_contents do |t|
      t.references :link, foreign_key: true
      t.references :word_content_category, foreign_key: true

      t.timestamps
    end
  end
end
