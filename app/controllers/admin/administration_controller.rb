class Admin::AdministrationController < ApplicationController
  before_filter :setup
  
  def update
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html {
          flash.now[:notice] = 'changes_saved_succesfully'
          redirect_to edit_profile_admin_administration_path
        }
        format.js {
          flash.now[:notice] = 'changes_saved_succesfully'
          render :update do |page|
            page['middle_col'].replace_html :partial => @partial_file
          end
        }
      else
        format.html {
          flash.now[:error] = 'check_your_input'
          @locals = { :user => current_user }
          render :action => :index
        }
        format.js {
          flash.now[:error] = 'check_your_input'
          @locals = { :user => current_user }
          render :update do |page|
            page['middle_col'].replace_html :partial => @partial_file
          end
        }
      end
    end
  end
  
  def edit_profile    
    respond_to do |format|
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_administration_sub_menu("edit_profile")
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
      format.html {
        render :action => :index
      }
    end
  end
  
  def index
    redirect_to admin_users_path
  end

private
  
  def setup
    @partial_file = "edit_own_profile"
    @backend_languages = { t('german') => "de", t('english') => "en"  }
    @user = current_user
  end
  
end