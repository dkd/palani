module ApplicationHelper
  
  # returns the current time formated
  def current_time
    Time.now.strftime("%R - %d.%m.%Y")
  end
  
  # returns all backend languages, that are defined in config/application.yml
  def backend_languages
    languages = Settings.backend.languages.to_a
    languages.each { |r| r[0] = t("backend_languages."+r[0]) }
  end
  
  # renders the settings for a given item
  # the item must be an instance of the specified types below
  # items available:
  # * Page
  # * ContentElement
  def render_settings(item)
    if item.is_a? Page
      render :partial => "/admin/pages/edit/settings", :locals => { :fields => item.edit_fields, :type => item.class.to_s.underscore }
    elsif item.is_a? ContentElement
      @type = (item.element_type=="ContentElement") ? item : Kernel.const_get(item.element_type).find_by_content_element_id(item.id)
      render :partial => "admin/content_elements/types/#{@type.class.to_s.underscore}/settings", 
                            :locals => { :element => item,
                                         :type => @type  }
    end
  end
  
end
