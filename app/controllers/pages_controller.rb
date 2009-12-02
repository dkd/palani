class PagesController < ApplicationController
  
  before_filter :find_page, :only => [:show]
  
  #   /tags/:tag
  #   /:page_url
  #   /
  def show
    render :json => { :success => true }
  end
  
  private
  
  def find_page
    @page = Page.find_by_url(params[:url])
    raise Palani::Rendering::NoPageFoundException unless @page
  end
  
end