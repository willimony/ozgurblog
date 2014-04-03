ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :username, :image_url

  index do
    selectable_column
    column :email
    column :username
    column :created_at
    actions
  end

  filter :email
  filter :username
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :image_url
      f.input :username
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  controller do
    def update_resource object, attributes
      attributes.each do |attr|
        if attr[:password].blank? and attr[:password_confirmation].blank?
          attr.delete :password
          attr.delete :password_confirmation
        end
      end

      object.send :update_attributes, *attributes
    end
  end
end
