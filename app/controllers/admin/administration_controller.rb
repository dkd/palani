class Admin::AdministrationController < ApplicationController
  before_filter :setup
  
  def update
    if @user.update_attributes(params[:user])
      flash.now[:notice] = 'changes_saved_succesfully'
      render :update do |page|
        page['middle_col'].replace_html :partial => "edit_own_profile"
      end
    else
      flash.now[:error] = 'check_your_input'
      render :update do |page|
        page['middle_col'].replace_html :partial => "edit_own_profile"
      end
    end
  end
  
  def edit_profile    
    respond_to do |format|
      format.html
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_administration_sub_menu("edit_profile")
          page['middle_col'].replace_html :partial => "edit_own_profile"
        end
      }
    end
  end
  
  def index
    redirect_to admin_users_path
  end

private
  
  def setup
    @backend_languages = { t('german') => "de", t('english') => "en"  }
    @user = current_user
  end
  
end