class Palani::BackendController < ActionController::Base
  helper :all
  helper_method :current_user_session, :current_user, :logged_in?, :current_user_is_admin?
  
  before_filter :set_backend_language

  protect_from_forgery
  
  # avoid logging passwords
  filter_parameter_logging :password, :password_confirmation
  
  protected

  def clear_authlogic_session
    sess = current_user_session
    sess.destroy if sess
  end
    
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
      if defined?(@current_user) && !@current_user.nil?
        return @current_user 
      end
      @current_user = current_user_session && current_user_session.user
    end

    def store_location
      session[:return_to] = request.request_uri
    end

    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
  
end