namespace :palani do
  
  desc "Install Palani in your current Rails application"
  task :install => :environment do
    
    Rake::Task["gems:install"].invoke
    
    puts ""
    puts "Beginning the installation of Palani..."
    puts ""
    puts "(1/4) Creating the database"
    
    Rake::Task["db:create"].invoke
    
    puts "... Created!"
    puts ""
    puts "(2/4) Loading the database schema"
    
    Rake::Task["db:migrate"].invoke
    
    puts "... Loaded!"
    puts ""
    puts "(3/4) Seeding the databases with initial data"
    
    Rake::Task["db:seed"].invoke
    
    puts "... Seeded!"
    puts ""
    puts "(4/4) Loading the current ExtJS release"
    
    system "curl -o #{RAILS_ROOT}/public/javascripts/extjs.zip http://www.extjs.com/deploy/ext-3.1.0.zip"
    system "cd #{RAILS_ROOT}/public/javascripts"
    system "unzip #{RAILS_ROOT}/public/javascripts/extjs.zip -d #{RAILS_ROOT}/public/javascripts"
    system "mv #{RAILS_ROOT}/public/javascripts/ext-3.1.0 #{RAILS_ROOT}/public/javascripts/extjs"
    
    puts "... Loaded!"
    puts ""
    puts "Palani is ready for use"
    puts ""
    puts "Type script/server -p 3000 to start the application."
    puts "The application will be available via http://localhost:3000/"
    puts ""
  end
  
end