class QuizQuestion < ActiveRecord::Base
	belongs_to :quiz
	has_many :quiz_answers

	validates :quiz_id, :body, presence: true
end
