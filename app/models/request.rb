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
end
