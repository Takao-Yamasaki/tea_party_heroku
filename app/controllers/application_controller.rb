class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :image])
  end

  # def authenticate_user
  #   if @current_user == nill
  #     flash[:notice] = "ログインが必要です"
  #     redirect_to("/login")
  #   end
  # end
end
