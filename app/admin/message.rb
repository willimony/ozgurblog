ActiveAdmin.register Message do
  permit_params :title, :content, :email
  
  index do
    selectable_column
    
    column :title
    column :email
    column :created_at
    
    actions
  end
end