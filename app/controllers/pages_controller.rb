class PagesController < ApplicationController
  
  before_filter :find_page, :only => [:show]
  
  #   /tags/:tag
  #   /:page_url
  #   /
  def show
    @template = Liquid::Template.parse(@page.template.code)
    @template.render('page' => @page)
  end
  
  private
  
  def find_page
    @page = Page.find_by_path(params[:url])
    raise Palani::Rendering::NoPageFoundException unless @page
  end
  
end