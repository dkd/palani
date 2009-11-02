class Admin::UsersController < ApplicationController
  include ActionView::Helpers::JavaScriptHelper
  include ActionView::Helpers::TagHelper
  include ActionController::UrlWriter
  include ActionView::Helpers::AssetTagHelper

  # GET /admin/users/new                                                    AJAX
  #-----------------------------------------------------------------------------
  def new
    @user = User.new
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  # POST /admin/users                                                       AJAX
  #-----------------------------------------------------------------------------
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
  
  # GET /admin/users/:id/edit                                               AJAX
  #-----------------------------------------------------------------------------
  def edit
    @user = User.find(params[:id])
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  # GET /admin/users
  # GET /admin/users                                                        AJAX
  # GET /admin/users.json
  #-----------------------------------------------------------------------------
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
          @users = actionize User.grid_data
          render :json => { :root => @users }
      }
    end
  end
  
  # PUT /admin/users/:id                                                    AJAX
  #-----------------------------------------------------------------------------
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

  # DELETE /admin/users/:id                                                 AJAX
  #-----------------------------------------------------------------------------
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash.now[:notice] = 'deleted_succesfully'
    
    render :update do |page|
      page['middle_col'].replace_html :partial => "index"
    end
  end
  
  private
  
  def actionize(users)
    users.each { |u|
      u[:actions] = link_to_remote( image_tag("icons/edit.png") , 
                                    :url => { :controller => "admin/users", :action => "edit", :id => u.id, :only_path => true  }, 
                                    :method => "get")
      u[:actions] << link_to_remote( image_tag("icons/delete.png") , 
                                    :url => { :controller => "admin/users", :action => "destroy", :id => u.id, :only_path => true  }, 
                                    :method => "delete")
    }
  end
  
end