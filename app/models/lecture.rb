class Lecture < ActiveRecord::Base
	belongs_to :course
	has_many :lecture_sentiments
	has_many :sentiments, through: :lecture_sentiments
	validates :title, :course_id, presence: true
end
