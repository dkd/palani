Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :selenium
end

Cucumber::Rails::World.use_transactional_fixtures = false

require "database_cleaner"

# Clean the database once when starting
DatabaseCleaner.clean_with :truncation
DatabaseCleaner.strategy = :truncation

Before do
  DatabaseCleaner.start
  include FixtureReplacement
end

After do
  DatabaseCleaner.clean
end

# this is necessary to have webrat "wait_for" the response body to be available
# when writing steps that match against the response body returned by selenium
World(Webrat::Selenium::Matchers)