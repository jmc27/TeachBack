class LecturesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_user
	before_action :set_course
	before_action :set_lecture, only: [:show, :edit, :update, :destroy]
	before_action :set_sentiments, only: [:show, :record_sentiment]
	#GET /courses/[:id]/lectures

	def index
		@lectures = Lecture.where(:course_id => @course.id)
	end


	#GET courses/[:id]/lectures/new
	def new
		@lecture = Lecture.new
	end

	def reportStudent(id)
	 	Pusher['teachback'].trigger('studentDetected', {
	    	message: "TeachBack: Student #{id} in lecture at #{Time.now}"
	    })
	 end

	def edit
	end

	def update
    respond_to do |format|
      if @lecture.update(lecture_params)
        format.html { redirect_to @lecture, notice: 'Lecture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

	#GET courses/:id
	def show
		enrollment = CourseEnrollment.find_by(user_id:@user.id,course_id:@course.id)
		if enrollment.enrollment_type == "Instructor"
			render "show_instructor"
		else
			render "show_student", layout: "devise"
			reportStudent(@user.id)
		end
	end

	#POST /courses
	#POST /courses.json

  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.course_id = @course.id

    respond_to do |format|
      if @lecture.save
        format.html { redirect_to course_url(@course), notice: 'Lecture was successfully created.' }
        format.json { render action: 'course/show', status: :created, location: @course }
      else
        format.html { render action: 'new' }
        format.json { render json: @lecture.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lecture.destroy
    redirect_to course_url(@course)
  end

  def record_sentiment
  	puts "******************* #{params}   *************"
  	render "show"
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
		@sentiments = @lecture.sentiments.map {|s| [s.title, s.id]}
	end

	#Sets current lecture's sentiments
	def set_sentiments
		@sentiments = [{id:1,title:"I'm Engaged"},{id:2,title:"I'm Bored"},{id:3,title:"I'm Confused"}]
	end

	# Never trust parameters from the scary internet, only allow the white list through.
    def lecture_params
      params.require(:lecture).permit(:title,:date,:info)
    end
end
