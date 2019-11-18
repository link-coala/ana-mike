Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'casa/calle'
  get 'casa/reception'
  get 'casa/janitorroom'
  get 'casa/bathroom'
  get 'casa/garden'
  get 'casa/balcony'
  get 'casa/managementoffice'
  get 'casa/leave'
  get 'casa/corridor'
  root 'casa#calle'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
