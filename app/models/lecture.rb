class Lecture < ActiveRecord::Base
	belongs_to :course

	validates :title, :course_id, presence: true
end
