class Category < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  
  validates_presence_of :name
  validates_uniqueness_of :name
  
  default_scope order: 'name'
end
