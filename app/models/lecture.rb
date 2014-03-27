class Lecture < ActiveRecord::Base
	belongs_to :course
	validates :title, :date,:course_id, presence: true
end
