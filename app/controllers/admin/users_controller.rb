class Admin::UsersController < Admin::Base
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /admin/users
  def index
    @users = User.all
  end

  # GET /admin/users/1
  def show
  end

  # PATCH/PUT /admin/users/1
  def update
    if @user.update_attributes(user_params)
      redirect_to admin_users_path, :notice => "ユーザーを更新しました。"
    else
      redirect_to admin_users_path, :alert => "ユーザーの更新を失敗しました。"
    end
  end

  # DELETE /admin/users/1
  def destroy
    @user.destroy
    redirect_to admin_users_path, :notice => "ユーザーを削除しました。"
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:role)
    end

end
