class Palani::Frontend::PagesController < Palani::FrontendController
  
  before_filter :check_template, :only => [:show]
  
  #   /tags/:tag
  #   /:page_url
  #   /
  def show
    @frontend_template = Liquid::Template.parse(@page.template.code)
  end
  
  private
  
  def check_template
    raise Palani::Rendering::NoTemplateFoundException unless @page.template
  end
  
end