class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # authentication exception. so you won't ask for login on the about or home page
  # before_action :authenticate_user!, :except => [:about, :home]
end
