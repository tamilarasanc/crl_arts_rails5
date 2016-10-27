class Author < ApplicationRecord

  validates :fullname,:firstname, presence: true, format: { with: /\A([-a-zA-Z_ ]+|)\z/i, message: "only allows letters" }
  validates :fullname,:firstname , uniqueness: true
  validates :email, presence: true, uniqueness: true , format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i , message: "Please provide valid email"}
  has_many :articles

  scope :by_active, -> { where("active = ?",true)}

end
