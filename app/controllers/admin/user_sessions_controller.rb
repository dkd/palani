class Admin::UserSessionsController < Palani::BackendController

  after_filter :set_lockdown_values, :only => :create

  layout 'palani/welcome'

  # GET /admin/user_sessions/new
  #-----------------------------------------------------------------------------  
  def new
    if current_user
      redirect_to admin_pages_path
    else
      @user_session = UserSession.new
      render :partial => "login", :layout => true
    end
  end

  # POST /admin/user_sessions
  #-----------------------------------------------------------------------------
  def create
    if current_user
      redirect_to admin_pages_path
    else
      @user_session = UserSession.new(params[:user_session])
      if @user_session.save
        flash.now[:notice] = 'succesful_login'
        redirect_to admin_pages_path
      else
        render :partial => "login", :layout => true
      end
    end
  end

  # DELETE /admin/user_sessions/:id
  #-----------------------------------------------------------------------------
  def destroy
    current_user_session.destroy
    reset_lockdown_session
    flash.now[:notice] = 'succesful_logout'
    redirect_to login_path
  end
  
  private
  
  def set_lockdown_values
    if user = @user_session.user
      add_lockdown_session_values(user)
    end
  end
  
end