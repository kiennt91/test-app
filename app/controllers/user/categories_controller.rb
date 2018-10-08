class User::CategoriesController < ApplicationController

  # GET /categories/1
  def show
    @category = Category.find(params[:id])
    @products = @category.products.includes(:publisher).with_running 
  end

end
