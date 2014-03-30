class Lecture < ActiveRecord::Base
	belongs_to :course

	validates :title, :date,:course_id, presence: true

	has_many :lecture_sentiments
	has_many :sentiments, through: :lecture_sentiments
	has_many :sentiment_records, through: :lecture_sentiments

end
