require 'test_helper'

class QuizQuestionTest < ActiveSupport::TestCase
  
	#Test to ensure quiz_question has all necessary attributes
  test "certain quiz_question attributes must not be empty" do 	
 	quizq = QuizQuestion.new
 	assert quizq.invalid?
 	assert quizq.errors[:body].any?
 	assert quizq.errors[:quiz_id].any?
 end
end
