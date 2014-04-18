class Category < ActiveRecord::Base
  default_scope -> { order :name }
  
  has_many :posts, dependent: :destroy
  
  validates :name,
            presence: true,
            uniqueness: true

  def to_param
    "#{id} #{name}".parameterize
  end
end
