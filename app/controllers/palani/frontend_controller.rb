class Palani::FrontendController < ActionController::Base
  helper :all

  protect_from_forgery
  
  layout nil
  
  # avoid logging passwords
  filter_parameter_logging :password, :password_confirmation
  
end