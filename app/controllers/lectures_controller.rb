class LecturesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	before_action :set_course
	before_action :set_lecture, only: [:show, :edit, :update, :destroy]

	#GET /courses/[:id]/lectures

	def index
		@lectures = Lecture.where(:course_id => @course.id)
	end


	#GET courses/[:id]/lectures/new
	def new
		@lecture = Lecture.new
	end

	#POST /courses
	#POST /courses.json

  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.course_id = @course.id

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to course_lecture_url(:course_id => @course.id, :id => @lecture.id), notice: 'Lecture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lecture }
      else
        format.html { render action: 'new' }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

	private
	def set_user
		@user = current_user
	end
	#Sets current course
	def set_course
		@course = Course.find(params[:course_id])
	end

	#Sets current lecture
	def set_lecture
		@lecture = Lecture.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
    def lecture_params
      params.require(:lecture).permit(:title)
    end
end
