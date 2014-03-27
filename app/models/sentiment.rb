class Sentiment < ActiveRecord::Base
	has_many :lecture_sentiments
end
