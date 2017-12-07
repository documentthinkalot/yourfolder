class Filetype < ActiveRecord::Base
  has_many :posts
  has_many :filetype2s
end
