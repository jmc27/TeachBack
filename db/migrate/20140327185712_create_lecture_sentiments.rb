class CreateLectureSentiments < ActiveRecord::Migration
  def change
    create_table :lecture_sentiments do |t|
      t.integer :lecture_id
      t.string :sentiment_id

      t.timestamps
    end
  end
end
