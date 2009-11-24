class Admin::PageTemplatesController < ApplicationController
  
  before_filter :find_template, :only => [:edit, :update, :destroy]
  
  def index
    @partial_file = "index"
    respond_to do |format|
      format.html
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_template_sub_menu("admin/page_templates")
          page['middle_col'].replace_html :partial => "index"
        end
      }
      format.json {
        @templates = actionize PageTemplate.grid_data
        render :json => { :root => @templates }
      }
    end
  end
  
  def new
    @page_template = PageTemplate.new
    
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  def create
    @page_template = PageTemplate.new(params[:page_template])
    
    if @page_template.save
      @partial_file = "index"
    else
      @partial_file = "new"
    end
    
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  def edit
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  def update
    if @page_template.update_attributes(params[:page_template])
      @partial_file = "index"
    else
      @partial_file = "edit"
    end
    
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  def destroy
    @page_template.destroy
    render :update do |page|
      page['middle_col'].replace_html :partial => "index"
    end
  end
  
  def parse_elements
  end
  
  private
  
  def find_template
    @page_template = PageTemplate.find(params[:id])
  end
  
  def actionize(templates)
    templates.each{ |t| 
      t[:actions] = t.actions
      t[:code] = t.clean_code }
  end
  
end