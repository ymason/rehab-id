Rails.application.routes.draw do

  devise_for :users
  resources :room_features,  only: [:new, :create, :index]

	get '/' => 'home#index', as: :home
	get '/dashboard' => 'users#show', as: :dashboard
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
