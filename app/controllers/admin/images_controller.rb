class Admin::ImagesController < ApplicationController
  def create
    @image = Image.new(params[:image])
    
    if @image.save
      render :update do |page|
        page['new_image'].replace_html "Bild gespeichert."
      end
    else
      render :update do |page|
        page['new_image'].replace_html "Bild nicht gespeichert."
      end
    end
  end
end
