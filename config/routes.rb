ActionController::Routing::Routes.draw do |map|

  map.namespace :admin do |admin|
      admin.resources :administration, :collection => { :edit_profile => :get  }
      admin.resources :content_element_images, :member => { :add_new_image => :get, :remove_image => :get }
      admin.resources :content_pages, :controller => "pages", 
                                      :collection =>  { :render_type_settings => :get, :move => :get, :new_select_position => :get }, 
                                      :member => { :update_new => :put } do |page|
        page.resources :content_elements
        page.resources :content_element_texts
        page.resources :content_element_images
      end
      admin.resources :pages, :collection =>  { :render_type_settings => :get, :move => :get, :new_select_position => :get }, 
                              :member => { :update_new => :put } do |page|
        page.resources :content_elements
      end
      admin.resources :help, :collection => { :faq => :get, :community => :get }
      admin.resources :trees, :collection => { :tree => :post, :refresh => :get  }
      admin.resources :tags
      admin.resources :users
      admin.resources :user_groups
      admin.resources :user_sessions
      admin.resources :welcome
  end

  map.root :controller => "admin/user_sessions", :action => "new"

  map.admin "admin", :controller => "admin/user_sessions", :action => "new"
  map.login "login", :controller => "admin/user_sessions", :action => "new"
  map.logout "logout", :controller => "admin/user_sessions", :action => "destroy"

end