class Event < ApplicationRecord
	has_many :user_events, dependent: :destroy
	has_many :users, through: :user_events 

	validates_presence_of :start_time, :end_time, :title, :description

	validate :end_date_is_after_start_date 


private


	def end_date_is_after_start_date
	  return if end_time.blank? || start_time.blank?

	  if end_time < start_time
	    errors.add(:end_time, "cannot be before the start date") 
	  end 
	end
end
