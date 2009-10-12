# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def current_time
    Time.now.strftime("%R - %d.%m.%Y")
  end
  
end
