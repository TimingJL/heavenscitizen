class CreateWordWordContents < ActiveRecord::Migration[5.1]
  def change
    create_table :word_word_contents do |t|
      t.references :word, foreign_key: true
      t.references :word_content_category, foreign_key: true

      t.timestamps
    end
  end
end
