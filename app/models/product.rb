class Product < ApplicationRecord
  include CommonScope

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

  # 検索機能用のスコープ
  scope :search_by_name, ->(name) { contains(arel_table[:name], name) if name.present? }
  scope :search_by_category_name, ->(category_name) { joins(:category).contains(Category.arel_table[:name], category_name) if category_name.present? }
  scope :search_by_publisher_name, ->(publisher_name) { joins(:publisher).contains(Publisher.arel_table[:name], publisher_name) if publisher_name.present? }
  scope :search_by_status, ->(status) { where(arel_table[:status].eq(statuses[status])) if status.present? }
  scope :order_by_name, -> { order(arel_table[:name]) }

  # 公開中の商品のみ取得
  scope :with_running, -> { search_by_status('running') }

  # 残量計算
  def remaining_amount
    @remaining_amount ||= total_amount - sell_amount
  end
end
