Rails.application.routes.draw do

  devise_for :users

 #  resources :users, only: [:index] do
 #    resources :rates, except: [:create]
	# end

  # resources :room_features,  only: [:new, :create, :index]

	get '/' => 'home#index', as: :home
	get '/dashboard' => 'users#show', as: :dashboard
	# post '/users/:user_id/rates' =>'rates#create', :as => :rates
end
