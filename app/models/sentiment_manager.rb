class sentiment_manager
	def self.getAvailableSentiments
		[:bored, :confused]
	end

	def SM.recordSentiment(u, t, l, sent)
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
		:bored
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

