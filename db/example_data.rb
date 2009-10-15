module FixtureReplacement
  
  attributes_for :user_group do |u|
    u.name = "Administrators"
  end
  
  attributes_for :user do |u|
    u.username              = "admin"
    u.email                 = "test@testing.com"
    u.surname               = "Max"
    u.name                  = "Power"
    u.password              = "test"
    u.password_confirmation = "test"
    u.backend_language      = "en"
    u.user_groups           << create_user_group
  end

  #create_user

end
