class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :filetype
  has_many :comments
  validates_presence_of :user_id
end
