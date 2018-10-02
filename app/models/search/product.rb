class Search::Product < Search::Base
  ATTRIBUTES = %i(name)
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Product.all
    results = results.where(contains(table[:name], name)) if name.present? 
    results = results.order(:name)
    results
  end

  private

    def table
      ::Product.arel_table
    end
end