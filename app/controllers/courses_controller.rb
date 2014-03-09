class CoursesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	before_action :set_product, only: [:show, :edit, :update, :destroy]


	#GET /courses

	def index
		@owned_courses = Course.where(:owner_id => @user.id).pluck(:title)
	end

	#GET courses/:id
	def show
		
	end

	#GET courses/new
	def new
		@course = Course.new
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

	#Sets current product
	def set_product
		@course = Course.find(params[:id])
	end

# Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:title)
    end

end
