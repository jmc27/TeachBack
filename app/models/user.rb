class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :courses, through: :course_enrollments
  has_many :course_enrollments


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
