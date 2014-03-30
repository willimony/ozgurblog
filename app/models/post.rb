class Post < ActiveRecord::Base
  belongs_to :category
  
  validates :title, presence: true,uniqueness: true 
  validates :content, :category_id, presence: true
  
  default_scope order: 'created_at DESC'

  paginates_per 10
end
