class Category < ApplicationRecord

  validates :name,:alias_name, presence: true, format: { with: /\A([-a-zA-Z_ ]+|)\z/i, message: "only allows letters" }

  has_and_belongs_to_many :articles

  #scope :parent, ->(category) { where("parent_id = ?",category.parent_id)}
end
