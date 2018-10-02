class Admin::ProductsController < Admin::Base
    before_action :set_product, only: [:show, :edit, :update, :destroy]
  
    # GET /admin/products
    def index
      @products = Product.order(:name).page(params[:page])
    end
  
    # GET/POST /admin/products/search
    def search
      @search_product = Search::Product.new(search_params)
      
      # 検索パラメータにより検索
      @products = @search_product.search.page(params[:page]) 
      render :index
    end
  
    # GET /admin/products/1
    def show
    end
  
    # GET /admin/products/new
    def new
      @product = Product.new
    end
  
    # GET /admin/products/1/edit
    def edit
    end
  
    # POST /admin/products
    def create
      @product = Product.new(product_params)
  
      if @product.save
        redirect_to [:admin, @product], notice: '製品を登録しました。'
      else
        render :new 
      end
    end
  
    # PATCH/PUT /admin/products/1
    def update
      if @product.update(product_params)
        redirect_to [:admin, @product], notice: '製品を更新しました。'
      else
        render :edit
      end
    end
  
    # DELETE /admin/products/1
    def destroy
      @product.destroy
      redirect_to admin_products_url, notice: '製品を削除しました。'
    end

    # POST /admin/products/upload
    def upload
      @upload_url = "https://ja.facebookbrand.com/wp-content/themes/fb-branding/prj-fb-branding/assets/images/thumb-drawn.svg";
      
    end
  
    private
  
      def set_product
        @product = Product.find(params[:id])
      end
  
      def product_params
        params.require(:product).permit(:name)
      end
  
      # 検索フォームから受け取ったパラメータ
      def search_params
        params
          .require(:search_product)
          .permit(Search::Product::ATTRIBUTES)
      end
  end
  