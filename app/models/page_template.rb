class PageTemplate < Template
  named_scope :grid_data, :select => 'id,title,code'
end