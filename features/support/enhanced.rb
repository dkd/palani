Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :selenium
end

Cucumber::Rails::World.use_transactional_fixtures = false

Before do

end

After do

end

# this is necessary to have webrat "wait_for" the response body to be available
# when writing steps that match against the response body returned by selenium
World(Webrat::Selenium::Matchers)