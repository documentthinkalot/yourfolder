class Sub2category < ActiveRecord::Base
  belongs_to :subcategory
  has_many :sub3category
  has_many :posts
end
