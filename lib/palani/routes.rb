ActionController::Routing::Routes.draw do |map|
  
  map.namespace :palani do |palani|
    palani.namespace :api do |api|
      api.resources :pages, :controller => "v1/pages" do |page|
        page.resources :content_elements, :controller => "v1/content_elements"
      end
    end
  end
  
  map.namespace :admin do |admin|
      admin.resources :administration, :collection => { :edit_profile => :get, :update_profile => :put }
      admin.resources :content_element_images, :member => { :add_new_image => :get, :remove_image => :get }
      admin.resources :content_element_templates
      admin.resources :content_pages, :controller => "pages", 
                                      :collection =>  { :render_type_settings => :get, :move => :post, :new_select_position => :get }, 
                                      :member => { :update_new => :put } do |page|
        page.resources :content_elements
        page.resources :content_element_texts
        page.resources :content_element_images
        page.resources :content_element_htmls
      end
      admin.resources :pages, :collection =>  { :render_type_settings => :get, :move => :post, :new_select_position => :get }, 
                              :member => { :update_new => :put } do |page|
        page.resources :content_elements
      end
      admin.resources :page_templates, :member =>  { :parse_elements => :put  }
      admin.resources :images
      admin.resources :help, :collection => { :faq => :get, :community => :get }
      admin.resources :trees, :collection => { :tree => :post, :refresh => :get  }
      admin.resources :tags
      admin.resources :users
      admin.resources :user_groups
      admin.resources :user_sessions
      admin.resources :welcome
  end

  map.admin "admin", :controller => "admin/user_sessions", :action => "new"
  map.login "login", :controller => "admin/user_sessions", :action => "new"
  map.logout "logout", :controller => "admin/user_sessions", :action => "destroy"
  
  map.connect '*url', :controller => 'palani/frontend/pages', :action => 'show'
  map.connect ':page_url', :controller => 'palani/frontend/pages', :action => 'show'
  map.connect '', :controller => 'palani/frontend/pages', :action => 'show'
  
  map.root :controller => "admin/user_sessions", :action => "new"
end