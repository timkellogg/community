class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :get_categories 

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
  	redirect_to main_app.root_url
  	flash.notice = "You aren't authorized to visit that page."
  end

  def get_categories 
    @categories = Category.all
  end

  protected
  
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up).push :username, :role
	    devise_parameter_sanitizer.for(:account_update).push :username, :role 
	  end
end
