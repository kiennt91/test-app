class HomesController < ApplicationController
  def index
    @categories = Category.includes(products: :publisher)
      .joins(products: :publisher)
      .find_running_products_with_limit_per_category(4)
  end
end
