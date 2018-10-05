class Admin::Base < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin 

  protected

    def authenticate_admin 
      redirect_to root_path, :alert => "アクセス不可" unless current_user.admin?
    end
end
