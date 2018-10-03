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
      .joins(:category, :publisher)  
      .includes(:category, :publisher).all
 
    # 製品名で検索
    results = results.where(contains(product_table[:name], product_name))     if product_name.present? 
    # カテゴリー名で検索
    results = results.where(contains(category_table[:name], category_name))   if category_name.present? 
    # パブリッシャー名で検索
    results = results.where(contains(publisher_table[:name], publisher_name)) if publisher_name.present? 
    # 製品ステータスで検索
    results = results.where(product_table[:status].eq(product_status))        unless all_status? 

    results = results.order(product_table[:name])
    results
  end

  private

    def product_table
      ::Product.arel_table
    end

    def category_table
      ::Category.arel_table
    end

    def publisher_table
      ::Publisher.arel_table
    end

    def product_status
      ::Product.statuses[status]
    end

    def all_status?
      return true if status == "all"
      return false
    end

end