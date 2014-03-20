class AddColumnsToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :code, :string
  	add_column :courses, :lecture_time, :string
  	add_column :courses, :lecture_days, :string
  	add_column :courses, :start_date, :date
  	add_column :courses, :end_date, :date
  	add_column :courses, :school, :string
  	add_column :courses, :instructor, :string
  end
end
