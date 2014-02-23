class QuizAnswer < ActiveRecord::Base
	belongs_to :user
	belongs_to :quiz_question

	validates :user_id, :quiz_question_id, :body, presence: true
end
