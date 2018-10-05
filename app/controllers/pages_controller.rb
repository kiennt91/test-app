class PagesController < ApplicationController
  def index
    @categories = Category.includes(products: :publisher)
      .joins(products: :publisher)
      .find_products_with_limit_per_category(4)
      .with_products_running
  end
end
