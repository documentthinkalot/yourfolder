class Sub5category < ActiveRecord::Base
  belongs_to :sub4category
  has_many :sub6category
  has_many :posts
end
