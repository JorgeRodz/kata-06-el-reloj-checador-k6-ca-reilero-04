class Store < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :attendances, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
end
