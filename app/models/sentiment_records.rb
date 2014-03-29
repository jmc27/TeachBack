class SentimentRecords < ActiveRecord::Base
	belongs_to :lecture
	has_many :lecture_sentiments
end
