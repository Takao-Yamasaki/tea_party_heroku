
class Users::RegistrationsController < Devise::RegistrationsController
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email , :image, :password)
  end
end
