class LectureSentiment < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :sentiment
	has_many :sentiment_records
end
