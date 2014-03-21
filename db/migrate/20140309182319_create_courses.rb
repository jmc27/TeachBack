class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
		t.integer :owner_id
		t.string :title
		t.string :code
		t.string :lecture_start_time
		t.string :lecture_end_time
		t.string :lecture_days
		t.date :start_date
		t.date :end_date
		t.string :school
		t.string :instructor
		t.string :location
		t.integer :instructor_pin
		t.integer :student_pin
		t.string :semester

    end
  end
end
