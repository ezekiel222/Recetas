Rails.application.routes.draw do
  resources :recipes, :path => 'recetas' do
    put :favorite, on: :member
  end
  resources :categories, :path => 'categorias'
  resources :users
  devise_for :users, :controllers => {registrations:'registrations'}, :path => 'u'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get 'afirmaciones/registro'
  get 'pages/recetas'
  get 'pages/ultimas'
  get 'pages/favoritas'
end
