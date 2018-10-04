class Admin::CategoriesController < Admin::Base
  before_action :set_category, only: [:edit, :update, :destroy]

  # GET /admin/categories
  def index
    @categories = Category.order(:name).page(params[:page])
  end

  # GET/POST /admin/categories/search
  def search
    @search_category = Search::Category.new(search_params)
    
    # 検索パラメータにより検索
    @categories = @search_category.search.page(params[:page]) 
    render :index
  end

  # GET /admin/categories/1
  def show
    @category = Category.preload(:publishers).find(params[:id]) 
  end

  # GET /admin/categories/new
  def new
    @category = Category.new
  end

  # GET /admin/categories/1/edit
  def edit
  end

  # POST /admin/categories
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, @category], notice: 'カテゴリーを登録しました。'
    else
      render :new 
    end
  end

  # PATCH/PUT /admin/categories/1
  def update
    if @category.update(category_params)
      redirect_to [:admin, @category], notice: 'カテゴリーを更新しました。'
    else
      render :edit
    end
  end

  # DELETE /admin/categories/1
  def destroy
    @category.destroy
    redirect_to admin_categories_url, notice: 'カテゴリーを削除しました。'
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
