class Message < ActiveRecord::Base
  validates :title, :content, :email, presence: true
  
  default_scope { order('created_at desc') }
end
