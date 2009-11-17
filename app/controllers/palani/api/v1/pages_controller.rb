class Palani::Api::V1::PagesController < ApplicationController
  
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