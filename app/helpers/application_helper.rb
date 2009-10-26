module ApplicationHelper
  
  # returns the current time formated
  def current_time
    Time.now.strftime("%R - %d.%m.%Y")
  end
  
  # returns all backend languages, that are defined in config/application.yml
  def backend_languages
    languages = Settings.backend.languages.to_a
    languages.each { |r| r[0] = t(r[0]) }
  end
  
end
