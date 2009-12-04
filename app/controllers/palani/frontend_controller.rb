class Palani::FrontendController < ActionController::Base
  helper :all

  protect_from_forgery
  
  layout nil
  
  before_filter :find_page
  before_filter :check_hidden_state, :only => [:show]
  
  # avoid logging passwords
  filter_parameter_logging :password, :password_confirmation
  
  protected
  
  def find_page
    @page = Page.find_by_path(params[:url])
    raise Palani::Rendering::NoPageFoundException unless @page
  end
  
  def check_hidden_state
    raise Palani::Rendering::PageIsHiddenException if @page.hidden
  end
  
end