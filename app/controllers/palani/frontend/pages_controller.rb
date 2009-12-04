class Palani::Frontend::PagesController < Palani::FrontendController
  
  before_filter :find_page, :only => [:show]
  
  #   /tags/:tag
  #   /:page_url
  #   /
  def show
    @frontend_template = Liquid::Template.parse(@page.template.code)
  end
  
  private
  
  def find_page
    @page = Page.find_by_path(params[:url])
    raise Palani::Rendering::NoPageFoundException unless @page
    raise Palani::Rendering::NoTemplateFoundException unless @page.template
  end
  
end