ActiveAdmin.register Post do  
  permit_params :title, :content, :published, :category_id, :user_id
  
  index do
    selectable_column
    column :title
    column :user
    column :category
    column :published
    column :created_at
    
    actions
  end
end