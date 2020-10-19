class ApplicationController < ActionController::Base
  
  before_action :confugure_permitted_parameters, if: :devise_controller?

  private
  def confugure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position,])
  end

end
