class AddPinsToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :instructor_pin, :integer
  	add_column :courses, :student_pin, :integer
  	add_column :courses, :location, :string
 	add_index :users, :username,                :unique => true
  end
end
