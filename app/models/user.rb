class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :place
  belongs_to :industry
  belongs_to :subindustry
  belongs_to :occupation
  belongs_to :suboccupation
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post
  has_many :requests, dependent: :destroy
  #usernameを必須とする
  validates_uniqueness_of :email, :nickname
  validates_presence_of :nickname, :email, :password,:sex, :number_of_employees, :industry_id, :subindustry_id, :occupation_id, :suboccupation_id, :place_id, :position, :circumstances, :age
  def self.sort(sort)
    #新しい順
    if sort == "created_at_desc"
      order("created_at desc")
    #古い順
    elsif sort == "created_at_asc"
      order("created_at asc")
    #人気順
    elsif sort == "likes_desc"
      joins(:likes).group('likes.post_id').order('count(likes.post_id) desc')
    #コメント多い順
    elsif sort == "comments_desc"
      joins(:comments).group('comments.post_id').order('count(comments.post_id) desc')
    else
      order("created_at desc") #全て表示。
    end
  end
end
