class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :lecture_id
      t.integer :course_id
      t.integer :student_id
      t.integer :interval
      t.string :feedback
      t.integer :engaged
      t.integer :bored
      t.integer :confused

      t.timestamps
    end
  end
end
