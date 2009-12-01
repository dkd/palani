class Admin::PageTemplatesController < ApplicationController
  
  before_filter :find_template, :only => [:edit, :update, :destroy]
  
  # GET /admin/page_templates
  # GET /admin/page_templates                                              AJAX
  # GET /admin/page_templates.json
  #----------------------------------------------------------------------------
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
  
  # GET /admin/page_templates/new                                          AJAX
  #----------------------------------------------------------------------------
  def new
    @page_template = PageTemplate.new
    
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  # POST /admin/page_templates                                            AJAX
  #----------------------------------------------------------------------------
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
  
  # GET /admin/page_templates/1/edit                                      AJAX
  #----------------------------------------------------------------------------
  def edit
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  # PUT /admin/page_templates/1                                           AJAX
  #----------------------------------------------------------------------------
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
  
  # DELETE /admin/page_templates/1                                         AJAX
  #----------------------------------------------------------------------------
  def destroy
    @page_template.destroy
    render :update do |page|
      page['middle_col'].replace_html :partial => "index"
    end
  end
  
  # PUT /admin/page_templates/1/parse_elements                             AJAX
  #----------------------------------------------------------------------------
  def parse_elements
    @page_template = PageTemplate.find(params[:id])
    
    @page_template.update_attributes(params[:page_template])
    @page_template.reload
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
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