class Admin::UserGroupsController < ApplicationController

  # GET /admin/user_groups
  # GET /admin/user_groups.json
  #----------------------------------------------------------------------------- 
  def index
    respond_to do |format|
      format.html
      format.json { render :json => { :root => UserGroup.active.json_data } }
    end
  end

  # GET /admin/user_groups/new                                              AJAX
  #-----------------------------------------------------------------------------
  def new
    @user_group = UserGroup.new
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  # POST /admin/user_groups                                                 AJAX
  #-----------------------------------------------------------------------------
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

  # DELETE /admin/user_groups/:id                                           AJAX
  #-----------------------------------------------------------------------------  
  def destroy
    user_group = UserGroup.find(params[:id])
    user_group.destroy
    
    render :update do |page|
      page['right_col'].replace_html render_right_col
    end
  end

  # GET /admin/user_groups/:id/edi                                          AJAX
  #-----------------------------------------------------------------------------  
  def edit
    @user_group = UserGroup.find(params[:id])
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  # PUT /admin/user_groups/:id                                              AJAX
  #-----------------------------------------------------------------------------
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