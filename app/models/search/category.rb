class Search::Category < Search::Base
  ATTRIBUTES = %i(name)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Category.all
    results = results.where(contains(category_table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

  private

    def category_table
      ::Category.arel_table
    end
end