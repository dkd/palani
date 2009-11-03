class Admin::ContentElementsController < ApplicationController
  
  # GET /admin/pages/:page_id/content_elements/new                        AJAX
  #----------------------------------------------------------------------------
  def new
    @content_element = ContentElement.new
    render :update do |page|
      page['middle_content'].replace_html :partial => "new"
    end
  end
  
end
