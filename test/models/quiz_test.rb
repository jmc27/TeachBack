require 'test_helper'

class QuizTest < ActiveSupport::TestCase

	#Test for presence of a course id
	test "quizzes must have an associated course" do
		quiz = Quiz.new
		assert quiz.invalid?
		assert quiz.errors[:course_id].any?
	end
end
