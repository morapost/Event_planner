# Preview all emails at http://localhost:3000/rails/mailers/event_mailer
class EventMailerPreview < ActionMailer::Preview
	def sample_mail_preview
    	EventMailer.registration_confirmation(Event.first.user_events.first)
  	end
end
