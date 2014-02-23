require 'test_helper'

class QuizAnswerTest < ActiveSupport::TestCase
 
 	#Test for quiz_answer attribute presence
   test "certain quiz_answer attributes must not be empty" do 	
 	quiza = QuizAnswer.new
 	assert quiza.invalid?
 	assert quiza.errors[:body].any?
 	assert quiza.errors[:quiz_question_id].any?
 	assert quiza.errors[:user_id].any?
 end
end
