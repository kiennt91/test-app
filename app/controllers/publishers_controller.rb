class PublishersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only
  before_action :set_publisher, only: [:show, :edit, :update, :destroy]

  # GET /publishers
  def index
    @publishers = Publisher.order(:name).page(params[:page])
  end

  # GET/POST /publishers/search
  def search
    @search_publisher = Search::Publisher.new(search_params)
    
    # 検索パラメータにより検索
    @publishers = @search_publisher.search.page(params[:page]) 
    render :index
  end

  # GET /publishers/1
  def show
  end

  # GET /publishers/new
  def new
    @publisher = Publisher.new
  end

  # GET /publishers/1/edit
  def edit
  end

  # POST /publishers
  def create
    @publisher = Publisher.new(publisher_params)

    if @publisher.save
      redirect_to @publisher, notice: 'パブリッシャーを登録しました。'
    else
      render :new 
    end
  end

  # PATCH/PUT /publishers/1
  def update
    if @publisher.update(publisher_params)
      redirect_to @publisher, notice: 'パブリッシャーを更新しました。'
    else
      render :edit
    end
  end

  # DELETE /publishers/1
  def destroy
    @publisher.destroy
    redirect_to publishers_url, notice: 'パブリッシャーを削除しました。'
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
