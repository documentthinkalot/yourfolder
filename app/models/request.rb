class Request < ActiveRecord::Base
  has_many :responses
  belongs_to :category
  belongs_to :user
end
