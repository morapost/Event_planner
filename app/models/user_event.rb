class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  private

  def generate_confirmation_token
  	if self.confirmation_token.blank?
  		self.confirmation_token = SecureRandom.urlsafe_base64.to_s
  	end
  end
  
end
