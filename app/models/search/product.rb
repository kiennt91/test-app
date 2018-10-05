class Search::Product < Search::Base
  ATTRIBUTES = %i(
    product_name
    category_name
    publisher_name
    status
  )
  attr_accessor(*ATTRIBUTES)

  def search
    @search ||= ::Product.includes(:category, :publisher)
      .search_by_name(product_name)
      .search_by_category_name(category_name)
      .search_by_publisher_name(publisher_name)
      .search_by_status(status)
      .order_by_name
  end

end