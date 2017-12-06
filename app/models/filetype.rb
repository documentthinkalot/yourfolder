class Filetype < ActiveRecord::Base
  has_ancestry
  has_many :posts
end
