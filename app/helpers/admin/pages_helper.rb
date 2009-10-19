module Admin::PagesHelper
  
  def page_types
    { t('.types.content_page') => "ContentPage",
      t('.types.shortcut') => "Shortcut"  }
  end
  
end
