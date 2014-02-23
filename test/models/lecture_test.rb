require 'test_helper'

class LectureTest < ActiveSupport::TestCase
 
 #Test to ensure lecture has a title and a course_id
  test "certain lecture attributes must not be empty" do 	
 	lecture = Lecture.new
 	assert lecture.invalid?
 	assert lecture.errors[:course_id].any?
 	assert lecture.errors[:title].any?
 end
end
