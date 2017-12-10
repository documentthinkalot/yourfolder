class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :place
  belongs_to :industry
  belongs_to :occupation
  has_many :posts
  has_many :comments
  has_many :articles
  has_many :likes
  has_many :like_posts, through: :likes, source: :post
  #usernameを必須とする
  validates_uniqueness_of :email, :nickname
  validates_presence_of :nickname, :industry_id, :occupation_id, :place_id, :position, :circumstances, :age
end
