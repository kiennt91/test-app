class Search::Product < Search::Base
  ATTRIBUTES = %i(
    product_name
    category_name
    publisher_name
  )
  attr_accessor(*ATTRIBUTES)

  def search
    results = ::Product
      .joins(:category, :publisher)  
      .includes(:category, :publisher).all
 
    results = results.where(contains(product_table[:name], product_name))     if product_name.present? 
    results = results.where(contains(category_table[:name], category_name))   if category_name.present? 
    results = results.where(contains(publisher_table[:name], publisher_name)) if publisher_name.present? 
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
end