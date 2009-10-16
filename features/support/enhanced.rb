Webrat.configure do |config|
  config.mode = :selenium
  #config.action_controller.session = { :session_http_only => false }
  # Selenium defaults to using the selenium environment. Use the following to override this.
  # config.application_environment = :test
end

# this is necessary to have webrat "wait_for" the response body to be available
# when writing steps that match against the response body returned by selenium
World(Webrat::Selenium::Matchers)