ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation,
                :full_name

  index do
    selectable_column

    column :full_name
    column :email
    column :created_at
    actions
  end

  filter :email
  filter :full_name
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Kullanıcı Detayları" do
      f.input :email
      f.input :full_name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end