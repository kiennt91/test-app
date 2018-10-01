class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

    def admin_only
      unless current_user.admin?
        redirect_to root_path, :alert => "アクセス不可"
      end
    end
end
