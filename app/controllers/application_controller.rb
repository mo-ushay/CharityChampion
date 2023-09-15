# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    before_action :require_login
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
  
    private
  
    def require_login
      unless current_user
        flash[:error] = 'You must be logged in to access this page.'
        redirect_to login_url
      end
    end
  end
  