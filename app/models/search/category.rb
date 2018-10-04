class Search::Category < Search::Base
  ATTRIBUTES = %i(name publisher_id)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Category.all

    # パブリッシャーで検索が必要場合 
    if publisher_id.present?
      results = results.joins(:publishers)
        .where(publisher_table[:id].eq(publisher_id))
    end

    # カテゴリー名で検索
    results = results.where(contains(category_table[:name], name)) if name.present? 
    results = results.order(category_table[:name])
    results
  end

end