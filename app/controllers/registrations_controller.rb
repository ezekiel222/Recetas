class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(
      :email,
      :password,
      :nombre,
      :apellido,
      :password_confirmation
    )
  end

  def after_sign_up_path_for(resource)
    afirmaciones_registro_path
  end

  def account_update_params
    params.require(:user).permit(
      :email,
      :password,
      :nombre,
      :apellido,
      :password_confirmation,
      :current_password
    )
  end
end
