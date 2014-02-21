class Feedback < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :course
	belongs_to :user
end
