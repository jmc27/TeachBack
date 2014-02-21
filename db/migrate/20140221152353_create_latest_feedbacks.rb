class CreateLatestFeedbacks < ActiveRecord::Migration
  def change
    create_table :latest_feedbacks do |t|
      t.integer :student_id
      t.integer :lecture_id
      t.string :feedback

      t.timestamps
    end
  end
end
