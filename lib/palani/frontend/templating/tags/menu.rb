require "lib/palani/frontend/templating/require_tags"

class Palani::Frontend::Templating::Tags::Menu < Liquid::Block
  
  TagStart                    = /\{\%/
  TagEnd                      = /\%\}/
  QuotedString                = /"[^"]+"|'[^']+'/
  QuotedFragment              = /#{QuotedString}|(?:[^\s,\|'"]|#{QuotedString})+/
  TagAttributes               = /(\w+)\s*\:\s*(#{QuotedFragment})/
  
  def initialize(tag_name, markup, tokens)
    super
    @page_id = markup.empty? ? nil : markup
    @attributes = {}
    markup.scan(TagAttributes) do |key, value|
      @attributes[key] = value
    end
  end
  
  def render(context)
    context.registers[:menu] ||= Hash.new(0)
  
    collection = @page_id ? Page.find(@page_id).children : Page.roots
    collection = collection.sorted.visible
  
    return '' unless collection.respond_to?(:each)
    return '' if collection.empty?
    
    result = []
      
    length = collection.length
          
    # Store our progress through the collection for the continue flag
    context.registers[:menu]["hmenu"] = 0 + collection.length

    context.stack do 
      collection.each_with_index do |item, index|
        context["menu_item"] = {
          'title' => item.title,
          'path' => item.path,
          'absolute_url' => item.absolute_url,
          'link' => item.link,
          'name'    => "menu_item",
          'length'  => length,
          'index'   => index + 1, 
          'index0'  => index, 
          'rindex'  => length - index,
          'rindex0' => length - index -1,
          'first'   => (index == 0),
          'first?'   => (index == 0),
          'last'    => (index == length - 1),
          'last?'    => (index == length - 1),
          'current' => (item.id == context["page"].id),
          'current?' => (item.id == context["page"].id) }

        result << render_all(@nodelist, context)
      end
    end
    result
  end
  
end