Rails.application.routes.draw do
  get 'casa/calle'
  get 'casa/reception'
  get 'casa/janitorroom'
  get 'casa/bathroom'
  get 'casa/garden'
  get 'casa/balcony'
  get 'casa/managementoffice'
  root 'casa#calle'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
