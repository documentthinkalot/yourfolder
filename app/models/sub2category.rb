class Sub2category < ActiveRecord::Base
  belongs_to :subcategory
  has_many :sub3category
  has_many :posts
  has_many :requests
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
