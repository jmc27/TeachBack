class CreateLatestFeedbacks < ActiveRecord::Migration
  def change
    create_table :latest_feedbacks do |t|
      t.integer :user_id
      t.integer :lecture_id
      t.string :feedback

      t.timestamps
    end
  end
end
