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
    @course.owner_id = @user.id

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course }
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
      params.require(:course).permit(:title, :instructor, :lecture_days, :lecture_time, :location)
    end

end
