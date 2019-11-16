class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sing_up, keys: [:name])
	end
end
