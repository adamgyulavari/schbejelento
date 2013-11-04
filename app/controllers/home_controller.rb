class HomeController < ApplicationController
	before_filter :authenticate_user!
	def index
		@title = "Rendezvények"
		@events = Event.all
	end
end
