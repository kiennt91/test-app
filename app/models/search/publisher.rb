class Search::Publisher < Search::Base
  ATTRIBUTES = %i(name category_id)
  attr_accessor(*ATTRIBUTES)

  def search
    @search ||= ::Publisher
      .search_by_name(name)
      .search_by_category_id(category_id)
      .order_by_name
  end

end