class Sub3category < ActiveRecord::Base
  belongs_to :sub2category
  has_many :sub4category
  has_many :posts
end
