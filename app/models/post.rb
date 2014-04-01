class Post < ActiveRecord::Base
  before_save :remove_html_tags
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
  
  belongs_to :category
  belongs_to :admin_user
  
  validates :title, presence: true, uniqueness: true 
  validates :content, :category_id, :admin_user_id, presence: true
  
  default_scope { order('created_at desc') }
  scope :published, -> { where(published: :t) }

  paginates_per 10
  
  
  private
  def remove_html_tags
    self.content = HTML::FullSanitizer.new.sanitize(self.content)
  end
end