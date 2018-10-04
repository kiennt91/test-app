class Search::Publisher < Search::Base
  ATTRIBUTES = %i(name category_id)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Publisher.all

    # カテゴリーで検索が必要場合 
    if category_id.present?
      results = results.joins(:categories)
        .where(category_table[:id].eq(category_id))
    end

    results = results.where(contains(publisher_table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

end