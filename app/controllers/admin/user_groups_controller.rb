class Admin::UserGroupsController < ApplicationController
  
  def index
    respond_to do |format|
      format.html
      format.json {
        user_groups = UserGroup.not_deleted.json_data
        render :json => { :root => user_groups }
      }
    end
  end
  
  def new
    @user_group = UserGroup.new
    @partial_file = "new"
    respond_to do |format|
      format.html {
        render :action => "index"
      }
      format.js {
        render :update do |page|
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
    end
  end
  
  def create
    @user_group = UserGroup.new(params[:user_group])
    if @user_group.save
      flash.now[:notice] = 'added_succesfully'
      render :update do |page|
        page['middle_col'].replace_html :partial => "/admin/users/index"
        page['right_col'].replace_html render_right_col
      end
    else
      flash.now[:error] = 'check_your_input'
      render :update do |page|
        page['middle_col'].replace_html :partial => "new"
      end
    end
  end
  
  def destroy
    @user_group = UserGroup.find(params[:id])
    @user_group.destroy
    
    render :update do |page|
      page['right_col'].replace_html render_right_col
    end
  end
  
  def edit
    @user_group = UserGroup.find(params[:id])
    @partial_file = "edit"
    respond_to do |format|
      format.html {
        render :action => "index"
      }
      format.js {
        render :update do |page|
          page['middle_col'].replace_html :partial => @partial_file
        end
      }
    end
  end
  
  def update
    params[:user_group][:permission_ids] ||= []
    @user_group = UserGroup.find(params[:id])
    if @user_group.update_attributes(params[:user_group])
      flash.now[:notice] = 'changes_saved_succesfully'
      render :update do |page|
        page['middle_col'].replace_html :partial => "/admin/users/index"
        page['right_col'].replace_html render_right_col
      end
    else
      flash.now[:error] = 'check_your_input'
      render :update do |page|
        page['middle_col'].replace_html :partial => "edit"
      end
    end
  end
  
end