class Article < ApplicationRecord

  has_one :article_content, :dependent => :destroy
  has_and_belongs_to_many :categories
  belongs_to :author
  belongs_to :section
  belongs_to :image

end
