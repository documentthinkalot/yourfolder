class Sub4category < ActiveRecord::Base
  belongs_to :sub3category
  has_many :sub5category
  has_many :posts
end
