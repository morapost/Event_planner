class EventMailer < ApplicationMailer

	

	def registration_confirmation(event)
		#binding.pry
	    #@event = event
	    @event = event[:event]
	    #binding.pry
	   	mail(:to => "#{@event.user.name} <#{@event.user.email}>", :subject => "Event Confirmation")
	    
 	end
end
