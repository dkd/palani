module ActsAsContentElement
  
  def self.included(base) # :nodoc:
    base.extend ClassMethods
  end
  
  module ClassMethods
            
    def acts_as_content_element(options = {})

      class_eval <<-EOV
      
        belongs_to :content_element, :dependent => :destroy
        validates_associated :content_element
      
        def icon
          '#{options[:icon]}'
        end
        def administration_partial
          '#{options[:administration_partial]}'
        end
      EOV

      include InstanceMethods      
    end
        
  end
  
  module InstanceMethods
    
    def header
      self.content_element.header
    end

    def page
      self.content_element.page
    end

    def element_type
      self.content_element.element_type
    end

    def hidden
      self.content_element.hidden
    end

    def tag_list
      self.content_element.tag_list
    end

    def template_id
      self.content_element.template_id
    end

    def template_part_id
      self.content_element.template_part_id
    end

    def header=(param)
      self.content_element.update_attributes :header => param
    end

    def page=(param)
      self.content_element.update_attributes :page => param
    end

    def element_type=(param)
      self.content_element.update_attributes :element_type => param
      self.content_element.create_element_type
    end

    def hidden=(param)
      self.content_element.update_attributes :hidden => param
    end

    def tag_list=(param)
      self.content_element.update_attributes :tag_list => param
    end

    def template_id=(param)
      self.content_element.update_attributes :template_id => param
    end

    def template_part_id=(param)
      self.content_element.update_attributes :template_part_id => param
    end    
    
  end

end

ActiveRecord::Base.send(:include, ActsAsContentElement)