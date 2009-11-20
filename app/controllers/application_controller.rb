class ApplicationController < ActionController::Base
  helper :all
  helper_method :current_user_session, :current_user, :logged_in?, :current_user_is_admin?
  
  before_filter :set_backend_language

  protect_from_forgery
  
  # avoid logging passwords
  filter_parameter_logging :password, :password_confirmation
  
  private
  
    # looks for the backend language, the current user has choosen, and passes it to the I18n module
    def set_backend_language
      I18n.locale = current_user.backend_language if (current_user && current_user.backend_language)
    end
    
    # returns the session of the currently logged in user
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end
    
    # returns the currently logged in user
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end

    def require_user
      unless current_user
        store_location
        redirect_to new_admin_user_session_url
        false
      end
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
  
end