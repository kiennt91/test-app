class Category < ApplicationRecord
  include CommonScope

  has_many :products, dependent: :destroy
  has_many :publishers, through: :products

  validates :name, presence: true
  validates :name, uniqueness: true

  # 検索機能用のスコープ
  scope :search_by_name, ->(name) { contains(arel_table[:name], name) if name.present? }
  scope :search_by_publisher_id, ->(publisher_id) { joins(:publishers).where(Publisher.arel_table[:id].eq(publisher_id)).distinct if publisher_id.present? }
  scope :order_by_name, -> { order(arel_table[:name]) }

  # 公開中の商品のみ取得
  scope :with_products_running, -> { where(Product.arel_table[:status].eq(Product.statuses['running'])) }

  # カテゴリー毎、limitの最新版の商品のみ取得
  scope :find_products_with_limit_per_category, ->(limit) do
    # サブクエリ
    latest_products = Product
     .select(:category_id)
     .select(
       Arel.sql(
       %Q(SUBSTRING_INDEX(GROUP_CONCAT(id ORDER BY created_at DESC), ',', #{limit}))
       ).as('grouped_id')
     )
     .group(:category_id)
     .as('latest_products')
 
   join_conds = Product.arel_table
     .join(latest_products)
     .on(
        (
          Product.arel_table[:category_id].eq(latest_products[:category_id])
        )
        .and(Arel.sql(%Q(FIND_IN_SET(`products`.`id`, grouped_id))))
      )
     .join_sources

     joins(join_conds)
  end

end
