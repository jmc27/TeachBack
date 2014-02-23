class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :title
      t.integer :user_id
      t.string :course_code
      t.string :teacher_pin
      t.string :student_pin
      t.string :ta_pin
      t.string :lecture_day_time
      t.string :school
      t.string :semester
      t.string :location
      t.integer :instructor_id
      t.string :instructor_name

      t.timestamps
    end
  end
end
