ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
     columns do
       column do
         panel "Gelen Mesajlar" do
           table_for Message.limit(10) do
             column 'Başlık', :title do |message|
               link_to message.title, admin_message_path(message)
             end
             
             column :email
             column 'Oluşturulma tarihi', :created_at
             
           end
           
           strong { link_to 'Bütün mesajları gör', admin_messages_path }
         end
       end
     end
           
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
