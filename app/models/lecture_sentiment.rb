class LectureSentiment < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :sentiment
end
