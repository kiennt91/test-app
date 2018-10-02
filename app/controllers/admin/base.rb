class Admin::Base < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  protected

    def admin_only
      unless current_user.admin?
        redirect_to root_path, :alert => "アクセス不可"
      end
    end
end
