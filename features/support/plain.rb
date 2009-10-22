# TODO: database_cleaner cleans too much,
# probably also wipes out tog config settings
# which makes features fail
# require 'database_cleaner'
# truncate your tables here if you are using the same database as selenium, since selenium doesn't use transactional fixtures
# DatabaseCleaner.clean_with :truncation
 
Cucumber::Rails.use_transactional_fixtures
require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean