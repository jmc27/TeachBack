class Attendance < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :user
end
