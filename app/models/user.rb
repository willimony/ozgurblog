class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :posts, dependent: :destroy

  validates :full_name, presence: true, uniqueness: true

  def to_param
    "#{id} #{full_name}".parameterize
  end
end