class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
  
  belongs_to :category
  belongs_to :admin_user
  
  validates :title, presence: true, uniqueness: true 
  validates :content, :category_id, presence: true
  
  default_scope {
    order('created_at desc')
  }

  paginates_per 10
end