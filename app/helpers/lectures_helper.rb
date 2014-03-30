module LecturesHelper
	class TBPusher
		def self.test
		    Pusher['teachback'].trigger('test', {
		    	message: "TeachBack: Test successiful at #{Time.now}"
		    })
		 end

		 def self.reportStudent(id)
		 	Pusher['teachback'].trigger('studentDetected', {
		    	message: "TeachBack: Student #{id} in lecture at #{Time.now}"
		    })
		 end
	end
end
