class Image < ApplicationRecord

  has_many :articles
  has_many :image_details

end
