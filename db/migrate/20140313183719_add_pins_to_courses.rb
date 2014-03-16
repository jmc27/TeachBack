class AddPinsToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :instructor_pin, :integer
  	add_column :courses, :student_pin, :integer
  end
end
