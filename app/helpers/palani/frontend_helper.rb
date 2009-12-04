module Palani::FrontendHelper
  
  # returns the current time formated
  def current_time
    Time.now.strftime("%R - %d.%m.%Y")
  end
  
end