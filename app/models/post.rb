class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  
  validates :title, presence: true,uniqueness: true 
  validates :content, :user_id, :category_id, presence: true
  
  default_scope order: 'created_at DESC'

  paginates_per 10
end
