class Post < ActiveRecord::Base
  default_scope -> { order('created_at desc') }
  scope :published, -> { where(published: :t) }

  paginates_per 5
  
  belongs_to :category
  belongs_to :user
  
  validates_uniqueness_of :title 
  validates :content, :category_id, :user_id, :title, 
            presence: true 

  def self.search q
    self.where("title like ? or content like ?", "%#{q}%", "%#{q}%")
  end

  def to_param
    "#{id} #{title}".parameterize
  end
end