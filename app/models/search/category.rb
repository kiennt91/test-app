class Search::Category < Search::Base
  ATTRIBUTES = %i(name publisher_id)
  attr_accessor(*ATTRIBUTES)

  def search
    @search ||= ::Category
      .search_by_name(name)
      .search_by_publisher_id(publisher_id)
      .order_by_name
  end

end