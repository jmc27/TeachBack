class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :created_courses, :class_name => "Course"
  has_many :courses, through: :course_enrollments
  has_many :course_enrollments
  has_many :quiz_answers
  has_many :posts
  has_many :post_responses
  has_many :feedbacks
  has_many :latest_feedbacks
  has_many :notes
  has_many :lectures, through: :attendance
  has_many :notifications


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
