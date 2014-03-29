class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  
  validates :title, :content, :user_id, :category_id, presence: true
  
  def get_published_posts
  end
  
end
