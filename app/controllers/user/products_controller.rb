class User::ProductsController < ApplicationController

  # GET /categories/:category_id/products/:id
  def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id]) 
  end

end
  