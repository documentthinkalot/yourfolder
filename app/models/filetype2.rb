class Filetype2 < ActiveRecord::Base
  belongs_to :filetype
  has_many :posts
end
