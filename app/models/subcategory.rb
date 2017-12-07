class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :sub2category
  has_many :posts
end
