class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [:name, :sex, :address, :tele_phone, :habbit, :strong_point, :job, :introduce_myself]
    )
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:name, :sex, :address, :tele_phone, :habbit, :strong_point, :job, :introduce_myself]
    )
  end
end
