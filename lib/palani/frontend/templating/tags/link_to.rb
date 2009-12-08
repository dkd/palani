class Palani::Frontend::Templating::Tags::LinkTo < Liquid::Tag
  
  def initialize(tag_name, page_id, tokens)
    super
    @page = Page.find(page_id)
  end
  
  def render(context)
    "<a href=\"#{@page.path}\">#{@page.title}</a>"
  end
  
end