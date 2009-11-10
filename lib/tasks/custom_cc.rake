desc 'Custom curise task for RSpec'  
task :cruise do  
         ENV['RAILS_ENV'] = 'test'  
     
         if File.exists?(Dir.pwd + "/config/database.yml")  
           if Dir[Dir.pwd + "/db/migrate/*.rb"].empty?  
             raise "No migration scripts found in db/migrate/ but database.yml exists, " +  
                   "CruiseControl won't be able to build the latest test database. Build aborted."  
           end  
     
              #perform standard Rails database cleanup/preparation tasks if they are defined in project  
              #this is necessary because there is no up-to-date development database on a continuous integration box  
           if Rake.application.lookup('db:test:purge') 
             CruiseControl::invoke_rake_task 'db:test:purge' 
           end 
    
           if Rake.application.lookup('db:migrate') 
             CruiseControl::reconnect 
             CruiseControl::invoke_rake_task 'db:migrate' 
           end 
         end 
    
         CruiseControl::invoke_rake_task 'spec'
end