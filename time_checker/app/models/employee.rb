class Employee < ApplicationRecord

  belongs_to :store
  has_many :attendances

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :private_number, length: {minimum:4, maximum:4}
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum:105}, format: { with: VALID_EMAIL_REGEX }
  validates :position, presence: true
  validates :private_number, presence: true

end
