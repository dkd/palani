ENV["RAILS_ENV"] = "test"
# see http://wiki.github.com/aslakhellesoy/cucumber/setting-up-selenium for help
require 'spec/expectations'
require 'selenium'
require 'webrat'

#Cucumber::Rails.use_transactional_fixtures = false
Cucumber::Rails::World.use_transactional_fixtures = false 
 
Webrat.configure do |config|
  config.mode = :selenium
  # Selenium defaults to using the selenium environment. Use the following to override this.
  config.application_environment = :test
  config.selenium_browser_key = '*safari'
end
 
require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation