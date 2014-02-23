class Quiz < ActiveRecord::Base
	belongs_to :course
	belongs_to :lecture
	has_many :quiz_questions

	validates :course_id, presence: true
end
