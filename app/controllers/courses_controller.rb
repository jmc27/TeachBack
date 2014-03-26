class CoursesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	before_action :set_course, only: [:show, :edit, :update, :destroy]


	#GET /courses

	def index
		redirect_to user_root_path
	end

	#GET courses/:id
	def show
		enrollment = CourseEnrollment.find_by(user_id:@user.id,course_id:@course.id)
		if enrollment.enrollment_type == "Instructor"
			render "show_instructor"
		else
			render "show_student"
		end
	end

	#GET courses/new
	def new
		@course = Course.new
	end

	def newPINS
		allPins = []
		Course.select('instructor_pin','student_pin').each do |course|
			allPins.push course.instructor_pin
			allPins.push course.student_pin
		end
		pins = []
		while pins.size < 2
			pin = 1000000 + Random.rand(10000000 - 1000000)
			while allPins.include? pin
				pin = 1000000 + Random.rand(10000000 - 1000000)
			end
			pins.push pin
			allPins.push pin
		end
		return pins
	end

	#POST /courses
	#POST /courses.json

  def create
    @course = Course.new(course_params)
    pins = newPINS
    @course.instructor_pin = pins[0]
    @course.student_pin = pins[1]

    respond_to do |format|
      if @course.save
      	CourseEnrollment.create(user: @user, course: @course, enrollment_type: "Instructor")
        format.html { redirect_to @user, notice: "1: Course was successfully created. 2:You're enrolled in this course as an Instructor" }
        format.json { render action: 'users#show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

	private

 	#Sets current user
	def set_user
		@user = current_user
	end

	#Sets current course
	def set_course
		@course = Course.find(params[:id])
	end

# Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title, :code, :instructor, :lecture_days, :start_date, :end_date, :school, :semester, :lecture_start_time, :lecture_end_time, :location)
    end

end
