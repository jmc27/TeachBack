class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :lecture_id
      t.integer :course_id
      t.boolean :timed
      t.date :end_time
      t.date :start_time

      t.timestamps
    end
  end
end
