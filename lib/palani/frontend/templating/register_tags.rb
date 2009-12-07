require "lib/palani/frontend/templating/require_tags"

Liquid::Template.register_tag("link_to", LinkTo)
Liquid::Template.register_tag("menu", Menu)