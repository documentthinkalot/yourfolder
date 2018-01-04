class Sub6category < ActiveRecord::Base
  belongs_to :sub5category
  has_many :posts
end
