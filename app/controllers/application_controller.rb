class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
before_action :configure_permitted_parameters, if: :devise_controller?
protected
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
end
 before_action :authenticate_visitor!
 skip_before_action :authenticate_visitor!, only: [:calle, :reception, :admin_login, :leave]
 around_action :switch_locale
 before_action :set_locale
 private
def set_locale
  I18n.locale = params[:locale] if params[:locale].present?
  # current_user.locale
  # request.subdomain
  # request.env["HTTP_ACCEPT_LANGUAGE"]
  # request.remote_ip
end
def default_url_options(options = {})
  {locale: I18n.locale}
end
  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
  
end