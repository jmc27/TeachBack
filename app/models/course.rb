class Course < ActiveRecord::Base
	validates :title, :course_code, :teacher_pin, :lecture_day_time, :school, 
	:semester, :location, :instructor_id, :instructor_name, :presence => true
end
