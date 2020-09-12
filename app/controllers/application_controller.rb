class ApplicationController < ActionController::Base
	def index
	  render 'cocktails/home'
	end
end
