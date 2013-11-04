class Event < ActiveRecord::Base
	belongs_to :user
	has_many :messages

	def status
		01
	end
end
