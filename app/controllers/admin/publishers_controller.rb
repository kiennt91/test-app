class Admin::PublishersController < Admin::Base
  before_action :set_publisher, only: [:edit, :update, :destroy]

  # GET /admin/publishers
  def index
    @publishers = Publisher.order(:name).page(params[:page])
  end

  # GET/POST /admin/publishers/search
  def search
    @search_publisher = Search::Publisher.new(search_params)
    
    # 検索パラメータにより検索
    @publishers = @search_publisher.search.page(params[:page]) 
    render :index
  end

  # GET /admin/publishers/1
  def show
    @publisher = Publisher.preload(:categories).find(params[:id])
  end

  # GET /admin/publishers/new
  def new
    @publisher = Publisher.new
  end

  # GET /admin/publishers/1/edit
  def edit
  end

  # POST /admin/publishers
  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      redirect_to [:admin, @publisher], notice: 'パブリッシャーを登録しました。'
    else
      render :new 
    end
  end

  # PATCH/PUT /admin/publishers/1
  def update
    if @publisher.update(publisher_params)
      redirect_to [:admin, @publisher], notice: 'パブリッシャーを更新しました。'
    else
      render :edit
    end
  end

  # DELETE /admin/publishers/1
  def destroy
    @publisher.destroy
    redirect_to admin_publishers_url, notice: 'パブリッシャーを削除しました。'
  end

  private

    def set_publisher
      @publisher = Publisher.find(params[:id])
    end

    def publisher_params
      params.require(:publisher).permit(:name)
    end

    # 検索フォームから受け取ったパラメータ
    def search_params
      params
        .require(:search_publisher)
        .permit(Search::Publisher::ATTRIBUTES)
    end
end
