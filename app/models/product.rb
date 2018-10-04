class Product < ApplicationRecord
  belongs_to :category
  belongs_to :publisher

  validates :name, uniqueness: true
  
  validates :total_amount, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :sell_amount,  numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price,        numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validates :name,      length: { in: 1..100 }
  validates :image_url, length: { in: 1..255 }

  validates :image_url, format: /\A#{URI::regexp(%w(http https))}\z/

  enum status: [:setting, :running, :stop]

  # 残量計算
  def remaining_amount
    @remaining_amount ||= total_amount - sell_amount
  end
end
