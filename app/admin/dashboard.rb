ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
     columns do
       column do
         simple_format """
yazıların formatı için
beni oku :)
======================

başlık için # başlık
italik yazmak için *bu bir italik yazı*
  ayrıca italik yazmak için _ de kullanılabilir
  _bu da bir italik yazı_
kalın yazmak için **bu kalın bir yazı**

resimler için
![](koyulacak resmin URL adresi)
örn:
  ![](http://upload.wikimedia.org/wikipedia/commons/b/bb/Kropotkin1.jpg)

listeler için
* elma
* armut
* kalem

sıralı liste için
1. ali
2. veli
3. deli"""
       end
       
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

  end
end
