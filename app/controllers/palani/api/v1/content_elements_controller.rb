class Palani::Api::V1::ContentElementsController < Palani::Api::ApiController
  
  before_filter :find_content_element, :only => [:show, :destroy]
  
  # GET   /palani/api/pages/1/content_elements/1.json
  # GET   /palani/api/pages/1/content_elements/1.xml
  #----------------------------------------------------------------------------
  def show
    respond_to do |format|
      format.json { render :json => @content_element }
      format.xml { render :xml => @content_element }
    end
  end
  
  # GET   /palani/api/pages/1/content_elements.json
  # GET   /palani/api/pages/1/content_elements.xml
  #----------------------------------------------------------------------------
  def index
    @content_elements = Page.find(params[:page_id]).content_elements
    
    respond_to do |format|
      format.json { render :json => @content_elements }
      format.xml { render :xml => @content_elements }
    end
  end
  
  # DELETE   /palani/api/pages/1/content_elements/1.json
  # DELETE   /palani/api/pages/1/content_elements/1.xml
  #----------------------------------------------------------------------------
  def destroy
    @content_element.destroy
    respond_to do |format|
      format.json { render :json => @content_element }
      format.xml { render :xml => @content_element }
    end
  end
  
  protected
  
  def find_content_element
    @content_element = ContentElement.find_by_page_id_and_id(params[:page_id], params[:id])
    raise Palani::Api::ContentElementNotFoundException unless @content_element
  end
  
end