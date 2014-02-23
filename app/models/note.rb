class Note < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :user

	validates :lecture_id, :note, :user_id, presence: true
end
