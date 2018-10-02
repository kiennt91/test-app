class Category < ApplicationRecord

  has_many :products, dependent: :destroy
  has_many :publishers, through: :products

  validates :name, presence: true
  validates :name, uniqueness: true
end
