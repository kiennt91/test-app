class Publisher < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :categories, through: :products

  validates :name, presence: true
  validates :name, uniqueness: true
end
