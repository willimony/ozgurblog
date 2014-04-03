class Message < ActiveRecord::Base
  validates :title, :content, :email, presence: true
  
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "lütfen bir email adresi giriniz."
  
  default_scope { order('created_at desc') }
end
