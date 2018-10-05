class Publisher < ApplicationRecord
  include CommonScope

  has_many :products, dependent: :destroy
  has_many :categories, through: :products

  validates :name, presence: true
  validates :name, uniqueness: true

  # 検索機能用のスコープ
  scope :search_by_name, ->(name) { contains(arel_table[:name], name) if name.present? }
  scope :search_by_category_id, ->(category_id) { joins(:categories).where(Category.arel_table[:id].eq(category_id)).distinct if category_id.present? }
  scope :order_by_name, -> { order(arel_table[:name]) }

end
