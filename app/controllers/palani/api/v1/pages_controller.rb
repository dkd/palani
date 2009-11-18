class Palani::Api::V1::PagesController < ApplicationController
  
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
  
  def index
    @pages = Page.all
    
    respond_to do |format|
      format.json { render :json => @pages }
      format.xml { render :xml => @pages }
    end
  end
  
  def show
    @page = Page.find(params[:id])
    
    respond_to do |format|
      format.json { render :json => @page }
      format.xml { render :xml => @page }
    end
  end
  
end