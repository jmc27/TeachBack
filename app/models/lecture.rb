class Lecture < ActiveRecord::Base
	belongs_to :course
<<<<<<< HEAD
	validates :title, :date,:course_id, presence: true
=======
	has_many :lecture_sentiments
	has_many :sentiments, through: :lecture_sentiments
	has_many :sentiment_records, through: :lecture_sentiments
	validates :title, :course_id, presence: true
>>>>>>> courselecture
end
