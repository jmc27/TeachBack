class CourseEnrollmentsController < ApplicationController
	before_action :authenticate_user!

def create
	pin = params[:pin]
	user_id = params[:user_id]
	course = Course.find_by(instructor_pin:pin)
	course2 = Course.find_by(student_pin:pin)
	if course
		type = "Instructor"
	elsif course2
		#Course Found
		course = course2
		type = "Student"
	else
		#No Course Found marching that PIN
		course = nil
		flash.now[:alert] = "No Course Marching PIN:#{pin}"
	end
	@user = current_user
	if course
		enrollment = CourseEnrollment.find_by(user_id:@user.id,course_id:course.id)
		if enrollment
			#Enrollment Exists, Update
			if enrollment.enrollment_type==type
				flash.now[:alert] = "You're already enrolled as #{type}."
			else
				enrollment.update_attributes(enrollment_type:type)
				flash.now[:notice] = "You're re-enrolled as #{type}."
			end
		else
			#Create Enrollment
			CourseEnrollment.create(user: @user, course: course, enrollment_type: type)
			flash.now[:notice] = "Successifuly enrolled as #{type}."
		end
		render "users/show"
	else
		render "courses/new"
	end
end

end
