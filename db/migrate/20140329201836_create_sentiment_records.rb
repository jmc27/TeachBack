class CreateSentimentRecords < ActiveRecord::Migration
  def change
    create_table :sentiment_records do |t|
    	t.integer :lecture_sentiment_id
      t.timestamps
    end
  end
end
