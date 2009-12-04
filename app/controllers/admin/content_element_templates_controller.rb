class Admin::ContentElementTemplatesController < Palani::BackendController
  
  before_filter :find_template, :only => [:edit, :update, :destroy]
  
  # GET /admin/content_element_templates                                   AJAX
  # GET /admin/content_element_templates.json
  #----------------------------------------------------------------------------
  def index
    @partial_file = "index"
    respond_to do |format|
      format.js {
        render :update do |page|
          page['left_col'].replace_html render_template_sub_menu("admin/content_element_templates")
          page['middle_col'].replace_html :partial => "index"
        end
      }
      format.json {
        @templates = actionize ContentElementTemplate.grid_data
        render :json => { :root => @templates }
      }
    end
  end
  
  # GET /admin/content_element_templates/new                               AJAX
  #----------------------------------------------------------------------------
  def new
    @content_element_template = ContentElementTemplate.new
    
    render :update do |page|
      page['middle_col'].replace_html :partial => "new"
    end
  end
  
  # POST /admin/content_element_templates                                  AJAX
  #----------------------------------------------------------------------------
  def create
    @content_element_template = ContentElementTemplate.new(params[:content_element_template])
    
    if @content_element_template.save
      @partial_file = "index"
    else
      @partial_file = "new"
    end
    
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  # GET /admin/content_element_templates/1/edit                           AJAX
  #----------------------------------------------------------------------------
  def edit
    render :update do |page|
      page['middle_col'].replace_html :partial => "edit"
    end
  end
  
  # PUT /admin/content_element_templates/1                                 AJAX
  #----------------------------------------------------------------------------
  def update
    if @content_element_template.update_attributes(params[:content_element_template])
      @partial_file = "index"
    else
      @partial_file = "edit"
    end
    
    render :update do |page|
      page['middle_col'].replace_html :partial => @partial_file
    end
  end
  
  # DELETE /admin/content_element_templates/1                              AJAX
  #----------------------------------------------------------------------------
  def destroy
    @content_element_template.destroy
    render :update do |page|
      page['middle_col'].replace_html :partial => "index"
    end
  end
  
  private
  
  def actionize(templates)
    templates.each{ |t| 
      t[:actions] = t.actions
      t[:code] = t.clean_code }
  end
  
  def find_template
    @content_element_template = ContentElementTemplate.find(params[:id])
  end
  
end