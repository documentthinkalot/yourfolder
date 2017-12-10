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
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Post.joins(:user).joins(:category).where(['body LIKE ? or title LIKE ? or nickname LIKE ? or name LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Post.all #全て表示。
    end
  end
end
