class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  belongs_to :sub2category
  belongs_to :filetype
  belongs_to :filetype2
  has_many :comments
  has_many :likes
  has_many :like_posts, through: :likes, source: :post
  validates_presence_of :user_id, :title, :body, :category_id, :filetype_id, :filetype2_id
  mount_uploader :file, FileUploader
  def self.search(search)
    if search
      Post.joins(:user).joins(:category).where(['body LIKE ? or title LIKE ? or nickname LIKE ? or name LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all #全て表示。
    end
  end
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
