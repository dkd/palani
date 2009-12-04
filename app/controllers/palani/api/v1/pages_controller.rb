class Palani::Api::V1::PagesController < Palani::BackendController
  
  before_filter :find_page, :only => [:show, :update,:destroy]
  
  # POST   /palani/api/pages.json
  # POST   /palani/api/pages.xml
  #----------------------------------------------------------------------------
  def create
    @page = Page.new(params[:page])
    
    if @page.save
      respond_to do |format|
        format.json { render :json => @page, :status => :created }
        format.xml { render :xml => @page, :status => :created }
      end
    else
      respond_to do |format|
        format.json { raise Palani::Api::InvalidRecordJSONException }
        format.xml { raise Palani::Api::InvalidRecordXMLException }
      end
    end
  end
  
  # GET   /palani/api/pages.json
  # GET   /palani/api/pages.xml
  #----------------------------------------------------------------------------
  def index
    @pages = Page.all
    
    respond_to do |format|
      format.json { render :json => @pages }
      format.xml { render :xml => @pages }
    end
  end
  
  # GET   /palani/api/pages/1.json
  # GET   /palani/api/pages/1.xml
  #----------------------------------------------------------------------------
  def show
    respond_to do |format|
      format.json { render :json => @page }
      format.xml { render :xml => @page }
    end
  end
  
  # PUT   /palani/api/pages/1.json
  # PUT   /palani/api/pages/1.xml
  #----------------------------------------------------------------------------
  def update
    if @page.update_attributes(params[:page])
      respond_to do |format|
        format.json { render :json => @page }
        format.xml { render :xml => @page }
      end
    else
      respond_to do |format|
        format.json { raise Palani::Api::InvalidUpdateOfRecordJSONException }
        format.xml { raise Palani::Api::InvalidUpdateOfRecordXMLException }
      end
    end
  end
  
  # DELETE   /palani/api/pages/1.json
  # DELETE   /palani/api/pages/1.xml
  #----------------------------------------------------------------------------
  def destroy
    @page.destroy
    respond_to do |format|
      format.json { render :json => @page }
      format.xml { render :xml => @page }
    end
  end
  
  private
  
  def find_page
    @page = Page.find(params[:id])
  end
  
end