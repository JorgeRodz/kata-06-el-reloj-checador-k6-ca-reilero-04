class Store < ApplicationRecord

  has_many :employees, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true

end
