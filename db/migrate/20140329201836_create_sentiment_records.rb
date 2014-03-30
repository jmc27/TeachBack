class CreateSentimentRecords < ActiveRecord::Migration
  def change
    create_table :sentiment_records do |t|
    	t.integer :lecture_sentiment_id
    	t.integer :user_id
    	t.datetime :timestamp
      t.timestamps
    end
  end
end
