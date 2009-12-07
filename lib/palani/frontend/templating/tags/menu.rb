require "lib/palani/frontend/templating/require_tags"

class Menu < Liquid::Block
  
  def initialize(tag_name, markup, tokens)
    super
    @page_id = markup.empty? ? nil : markup
  end
  
  def build_output(menu_item)
    pages = @page_id ? Page.find(@page_id).children : Page.roots
    output = ""
    pages.sorted.visible.each{ |page|
      output += menu_item.collect{ |part|
        part = itemize(part, page) if part.is_a? Liquid::Variable
        part
      }.join
    }
    output
  end
  
  def render(context)
    menu_item = super
    build_output(menu_item)
  end
  
  protected
  
  def render_all(list, context)
    list
  end
  
  private
  
  def itemize(token, page)
    Liquid::Template.parse("{% link_to #{page.id} %}").render
  end
  
end