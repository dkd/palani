class Admin::UsersController < ApplicationController
  
  before_filter :setup
  
  def new
    @user = User.new
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  def create
    params[:user][:user_group_ids] = params[:user_groups].split(",") if params[:user_groups]
    @user = User.new(params[:user])
    if @user.save
      @partial_file = "index"
    else
      flash.now[:error] = 'check_your_input'
      @partial_file = "new"
    end
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  def show
    @user = current_user
  end
  
  def edit
    @user = User.find(params[:id])
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  def index
    respond_to do |format|
      @partial_file = "admin/users/index"
      format.html
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_administration_sub_menu("index")
          page['middle_col'].replace_html :partial => "index"
          page['right_col'].replace_html render_right_col
        end
      }
      format.json {
          users = User.grid_data
          users.each { |u| u[:actions] = u.actions }
          render :json => { :root => users }
      }
    end
  end
  
  def update
    @user = User.find(params[:id])
    params[:user][:user_group_ids] = params[:user_groups].split(",") if params[:user_groups]
    if @user.update_attributes(params[:user])
      flash.now[:notice] = 'changes_saved_succesfully'
      @partial_file = "/admin/users/index"
    else
      flash.now[:error] = 'check_your_input'
      @partial_file = "edit"
    end
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash.now[:notice] = 'deleted_succesfully'
    
    render :update do |page|
      page['middle_col'].replace_html :partial => "index"
    end
  end
  
  private
  
  def setup
    @backend_languages = { t('german') => "de", t('english') => "en"  }
  end
  
end