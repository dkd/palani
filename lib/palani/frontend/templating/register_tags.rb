require "lib/palani/frontend/templating/require_tags"

Liquid::Template.register_tag("link_to", Palani::Frontend::Templating::Tags::LinkTo)
Liquid::Template.register_tag("menu", Palani::Frontend::Templating::Tags::Menu)