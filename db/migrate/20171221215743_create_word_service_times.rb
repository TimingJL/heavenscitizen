class CreateWordServiceTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :word_service_times do |t|
      t.references :word, foreign_key: true
      t.references :service_time_category, foreign_key: true

      t.timestamps
    end
  end
end
