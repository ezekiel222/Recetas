Rails.application.routes.draw do
  resources :recipes
  devise_for :usuarios, :controllers => {registrations:'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'afirmaciones/registro'
end
