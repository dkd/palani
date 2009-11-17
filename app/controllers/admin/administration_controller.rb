class Admin::AdministrationController < ApplicationController
  before_filter :setup
  
  # PUT /admin/administration/update_profile
  #----------------------------------------------------------------------------
  def update_profile
    if @user.update_attributes(params[:user])
      flash[:notice] = 'changes_saved_succesfully'
      # redirect to reload locales
      redirect_to edit_profile_admin_administration_path
    else
      flash.now[:error] = 'check_your_input'
      render :action => :edit_profile
    end
  end

  # GET /admin/administration/edit_profile
  # GET /admin/administration/edit_profile                                AJAX
  #----------------------------------------------------------------------------
  def edit_profile
    respond_to do |format|
      format.html
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_administration_sub_menu("edit_profile")
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
    end
  end
  
  # GET /admin/administration
  #----------------------------------------------------------------------------
  def index
    redirect_to admin_users_path
  end

private
  
  def setup
    @user = current_user
    @partial_file = "edit_own_profile"
  end
  
end