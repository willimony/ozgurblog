class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  default_scope -> { order('created_at desc') }
  scope :published, -> { where(published: :t) }

  paginates_per 5
  
  belongs_to :category
  belongs_to :admin_user
  
  validates_uniqueness_of :title 
  validates :content, :category_id, :admin_user_id, :title, 
            presence: true 

  def self.search q
    self.where("title like ? or content like ?", "%#{q}%", "%#{q}%")
  end
end