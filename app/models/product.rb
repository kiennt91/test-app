class Product < ApplicationRecord
  belongs_to :category
  belongs_to :publisher

  validates :name, uniqueness: true
  
  validates :total_amount, numericality: { only_integer: true }
  validates :sell_amount,  numericality: { only_integer: true }
  validates :price,        numericality: { only_integer: true }

  validates :name,      length: { in: 1..10 }
  validates :image_url, length: { in: 1..255 }

end
