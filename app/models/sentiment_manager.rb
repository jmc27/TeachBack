class sentiment_manager
	def self.getAvailableSentiments(lecture)
		[:engaged, :confused]
	end

	def SM.recordSentiment(u_id, timestamp, lecture_sentiment_id)
		SentimentRecord.create(u, t, lecture_sentiment_id)
	end

	def SM.getSentHist(lecture, from_t, to_t, int)
		# database work to look records in sentiment_history db, aggregate by times
		# dasdasdasd
		s = SentHistValue.new(:happy)
		s.addHistVal(3, 10)			
	end
end

class SentHistValue
	def getSentiment
		:engaged
	end

	def getStartTime
		100
	end

	def getValues
		[100,200,300]
	end
end

SM.getAvailableSentiments(lecture_id) # => [:bored, :confused]
SM.recordSentimentObservation(user_id, sent_id, lect_id)

#url
/lecture/id/feedback

