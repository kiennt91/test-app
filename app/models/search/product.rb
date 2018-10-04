class Search::Product < Search::Base
  ATTRIBUTES = %i(
    product_name
    category_name
    publisher_name
    status
  )
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Product
      .includes(:category, :publisher).all
 
    # カテゴリー名で検索
    results = results.joins(:category).where(contains(category_table[:name], category_name))    if category_name.present? 
    # パブリッシャー名で検索
    results = results.joins(:publisher).where(contains(publisher_table[:name], publisher_name)) if publisher_name.present? 
    # 製品名で検索
    results = results.where(contains(product_table[:name], product_name))                       if product_name.present? 
    # 製品ステータスで検索
    results = results.where(product_table[:status].eq(::Product.statuses[status]))              if status.present?

    results = results.order(product_table[:name])
    results
  end

end