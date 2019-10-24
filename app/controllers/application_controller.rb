class ApplicationController < ActionController::Base
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