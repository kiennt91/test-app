class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.order(:name).page(params[:page])
  end

  # GET/POST /categories/search
  def search
    @search_category = Search::Category.new(search_params)
    
    # 検索パラメータにより検索
    @categories = @search_category.search.page(params[:page]) 
    render :index
  end

  # GET /categories/1
  def show
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category, notice: 'カテゴリーを登録しました。'
    else
      render :new 
    end
  end

  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      redirect_to @category, notice: 'カテゴリーを更新しました。'
    else
      render :edit
    end
  end

  # DELETE /categories/1
  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'カテゴリーを削除しました。'
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

    # 検索フォームから受け取ったパラメータ
    def search_params
      params
        .require(:search_category)
        .permit(Search::Category::ATTRIBUTES)
    end
end
