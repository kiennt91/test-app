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

  # カテゴリー毎、limitの最新版の公開中商品のみ取得
  scope :find_running_products_with_limit_per_category, ->(limit) do
    # サブクエリ
    latest_running_products = Product
     .select(:category_id)
     .select(
       Arel.sql(
       %Q(SUBSTRING_INDEX(GROUP_CONCAT(id ORDER BY created_at DESC), ',', #{limit}))
       ).as('grouped_id')
     )
     .with_running
     .group(:category_id)
     .as('latest_products')
 
   join_conds = Product.arel_table
     .join(latest_running_products)
     .on(
        (
          Product.arel_table[:category_id].eq(latest_running_products[:category_id])
        )
        .and(Arel.sql(%Q(FIND_IN_SET(`products`.`id`, grouped_id))))
      )
     .join_sources

     joins(join_conds)
  end
end
