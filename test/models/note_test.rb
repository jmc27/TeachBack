require 'test_helper'

class NoteTest < ActiveSupport::TestCase
 
	#Ensures that necessary attributes are present
  test "certain note attributes must not be empty" do 	
 	note = Note.new
 	assert note.invalid?
 	assert note.errors[:note].any?
 	assert note.errors[:user_id].any?
 	assert note.errors[:lecture_id].any?
 end
end
