class Notification < ActiveRecord::Base
	belongs_to :course
	belongs_to :lecture
	belongs_to :user
end
