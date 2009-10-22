Factory.define :user do |u|
  u.surname               "Max"
  u.name                  "Power"
  u.username              "admin"
  u.password              "test"
  u.password_confirmation "test"
  u.backend_language      "en"
  u.email                 "max@power.com"
end