class Request < ActiveRecord::Base
  has_many :responses
  belongs_to :category
  belongs_to :subcategory
  belongs_to :sub2category
  belongs_to :sub3category
  belongs_to :sub4category
  belongs_to :sub5category
  belongs_to :sub6category
  belongs_to :user
  def self.left(left)
    if left == "left"
      all.reject{|e| e.responses.exists?}
    #古い順
    else
      all
    end
  end
  def self.sort(sort)
    #新しい順
    if sort == "created_at_desc"
      order("created_at desc")
    #古い順
    elsif sort == "created_at_asc"
      order("created_at asc")
    else
      order("created_at desc") #全て表示。
    end
  end
end
