class UserEvent < ApplicationRecord
	before_save :generate_confirmation_token

  belongs_to :user
  belongs_to :event

  def accept_event
    self.status = "Accepted"
    #self.confirmation_token = nil
    
  end

  private

  def generate_confirmation_token
  	if self.confirmation_token.blank?
  		self.confirmation_token = SecureRandom.urlsafe_base64.to_s
  	end
  end


  
end
