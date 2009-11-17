module ActionView
  module Helpers
    module PrototypeHelper
      alias :form_remote_tag_old :form_remote_tag
      def form_remote_tag(options = {}, &block)
        unless options[:html] && options[:html][:multipart]
           form_remote_tag_old(options, &block)
        else
          uid = "a#{Time.now.to_f.hash}"
          <<-STR    
true})}” enctype=”multipart/form-data” target=”#{uid}” #{%(onsubmit=”#{options[:loading]}”) if options[:loading]}> 
          STR 
        end 
      end 
    end 
  end 
end