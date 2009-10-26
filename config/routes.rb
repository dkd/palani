ActionController::Routing::Routes.draw do |map|

  map.namespace :admin do |admin|
      admin.resources :administration, :collection => { :edit_profile => :get  }
      admin.resources :pages, :collection =>  { :render_type_settings => :get, :move => :get, :new_select_position => :get }, :member => { :update_new => :put }
      admin.resources :help, :collection => { :faq => :get, :community => :get }
      admin.resources :trees, :collection => { :tree => :post, :refresh => :get  }
      admin.resources :users
      admin.resources :user_groups
      admin.resources :user_sessions
      admin.resources :welcome
  end

  map.root :controller => "admin/user_sessions", :action => "new"

  map.login "login", :controller => "admin/user_sessions", :action => "new"
  map.logout "logout", :controller => "admin/user_sessions", :action => "destroy"


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
