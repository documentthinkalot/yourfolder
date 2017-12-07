class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  belongs_to :sub2category
  belongs_to :filetype
  belongs_to :filetype2
  has_many :comments
  validates_presence_of :user_id, :title, :body, :category_id, :filetype_id
end
