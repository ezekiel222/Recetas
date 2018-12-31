Rails.application.routes.draw do
  resources :recipes
  resources :categories
  resources :users
  devise_for :users, :controllers => {registrations:'registrations'}, :path => 'u'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'afirmaciones/registro'
  get 'pages/recetas'
  get 'pages/ultimas'
end
