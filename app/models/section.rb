class Section < ApplicationRecord

  validates :name,:alias_name, presence: true, format: { with: /\A([-a-zA-Z_ ]+|)\z/i, message: "only allows letters" }

  has_many :articles

  scope :by_active, -> { where("active = ?",true)}

end
