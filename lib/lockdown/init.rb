Lockdown::System.configure do

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Configuration Options
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Options with defaults:
  #
  #
  # Set User model:
  #      # make sure you use the string "User", not the constant
  #      options[:user_model] = "User"
  #
  # Set UserGroup model:
  #      # make sure you use the string "UserGroup", not the constant
  #      options[:user_group_model] = "UserGroup"
  #
  # Set who_did_it method:
  #   This method is used in setting the created_by/updated_by fields and
  #   should be accessible to the controller
  #      options[:who_did_it] = :current_user_id
  #
  # Set default_who_did_it:
  #   When current_user_id returns nil, this is the value to use
  #      options[:default_who_did_it] = 1
  #
  #   Lockdown version < 0.9.0 set this to:
  #       options[:default_who_did_it] = Profile::System
  #
  #   Should probably be something like:
  #      options[:default_who_did_it] = User::SystemId
  #
  # Set timeout to 1 hour:
  #       options[:session_timeout] = (60 * 60)
  #
  # Call method when timeout occurs (method must be callable by controller):
  options[:session_timeout_method] = :clear_authlogic_session
  #
  # Set system to logout if unauthorized access is attempted:
  #       options[:logout_on_access_violation] = false
  #
  # Set redirect to path on unauthorized access attempt:
  options[:access_denied_path] = "/admin/"
  #
  # Set redirect to path on successful login:
  options[:successful_login_path] = "/admin/"
  #
  # Set separator on links call
  #       options[:links_separator] = "|"
  #
  # If deploying to a subdirectory, set that here. Defaults to nil
  #       options[:subdirectory] = "admin"
  #       *Notice: Do not add leading or trailing slashes,
  #                Lockdown will handle this
  #
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Define permissions
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  #
  # set_permission(:product_management).
  #   with_controller(:products)
  #
  # :product_management is the name of the permission which is later
  # referenced by the set_user_group method
  #
  # .with_controller(:products) defaults to all action_methods available on that
  #  controller.  You can change this behaviour by chaining on except_methods or
  #  only_methods.  (see examples below)
  #
  #  ** To define a namespaced controller use two underscores:
  #     :admin__products
  #
  # if products is your standard RESTful resource you'll get:
  #   ["products/index , "products/show",
  #    "products/new", "products/edit",
  #    "products/create", "products/update",
  #    "products/destroy"]
  #
  # You can chain method calls to restrict the methods for one controller
  # or you can add multiple controllers to one permission.
  #      
  #   set_permission(:security_management).
  #     with_controller(:users).
  #     and_controller(:user_groups).
  #     and_controller(:permissions) 
  #
  # In addition to with_controller(:controller) there are:
  #
  #   set_permission(:some_nice_permission_name).
  #     with_controller(:some_controller_name).
  #       only_methods(:only_method_1, :only_method_2)
  #
  #   set_permission(:some_nice_permission_name).
  #     with_controller(:some_controller_name).
  #       except_methods(:except_method_1, :except_method_2)
  #
  #   set_permission(:some_nice_permission_name).
  #     with_controller(:some_controller_name).
  #       except_methods(:except_method_1, :except_method_2).
  #     and_controller(:another_controller_name).
  #     and_controller(:yet_another_controller_name)
  #
  # Define your permissions here:
  
  # admin/pages
  set_permission(:content).with_controller(:admin__pages).only_methods(:index, :show)
  set_permission(:create_content).with_controller(:admin__pages).only_methods(:new, :create)
  set_permission(:edit_content).with_controller(:admin__pages).only_methods(:edit, :update)
  set_permission(:delete_content).with_controller(:admin__pages).only_methods(:destroy)
  
  # admin/administration
  set_permission(:edit_profile).with_controller(:admin__administration).only_methods(:edit_profile)
  
  # admin/users
  set_permission(:users).with_controller(:admin__users).only_methods(:index, :show)
  set_permission(:create_user).with_controller(:admin__users).only_methods(:new, :create)
  set_permission(:edit_user).with_controller(:admin__users).only_methods(:edit, :update)
  set_permission(:delete_user).with_controller(:admin__users).only_methods(:destroy)
  
  # admin/help
  set_permission(:help).with_controller(:admin__help).only_methods(:index)
  set_permission(:faq_help).with_controller(:admin__help).only_methods(:faq)
  set_permission(:community_help).with_controller(:admin__help).only_methods(:community)
  
  # admin/page_templates
  set_permission(:page_templates).with_controller(:admin__page_templates).only_methods(:index)
  set_permission(:create_page_template).with_controller(:admin__page_templates).only_methods(:new, :create)
  set_permission(:edit_page_template).with_controller(:admin__page_templates).only_methods(:edit, :update)
  set_permission(:delete_page_template).with_controller(:admin__page_templates).only_methods(:destroy)
  
  # admin/content_element_templates
  set_permission(:content_element_templates).with_controller(:admin__content_element_templates).only_methods(:index)
  set_permission(:create_content_element_template).with_controller(:admin__content_element_templates).only_methods(:new, :create)
  set_permission(:edit_content_element_template).with_controller(:admin__content_element_templates).only_methods(:edit, :update)
  set_permission(:delete_content_element_template).with_controller(:admin__content_element_templates).only_methods(:destroy)
  
  # Pages, that don't need any authorization
  set_permission(:login).with_controller(:admin__user_sessions)
  set_permission(:frontend).with_controller(:palani__frontend__pages)
  
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Built-in user groups
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  #  You can assign the above permission to one of the built-in user groups
  #  by using the following:
  # 
  #  To allow public access on the permissions :sessions and :home:
  #    set_public_access :sessions, :home
  #     
  #  Restrict :my_account access to only authenticated users:
  #    set_protected_access :my_account
  #
  # Define the built-in user groups here:
  set_public_access :login
  set_public_access :frontend

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  # Define user groups
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  #
  #  set_user_group(:catalog_management, :category_management, 
  #                                      :product_management) 
  #
  #  :catalog_management is the name of the user group
  #  :category_management and :product_management refer to permission names
  #
  # 
  # Define your user groups here:

end 
