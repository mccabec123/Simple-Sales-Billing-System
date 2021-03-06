class ApplicationController < ActionController::Base
	#This is the base application controller in which the current user is held and various other methods
  	protect_from_forgery
  	helper_method :current_user

  private
	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
end