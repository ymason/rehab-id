Rails.application.routes.draw do

  devise_for :users

	resources :users, only: [:index] do
  	resources :projects
  end

  resources :users, only: [:index] do
    resources :price_features
  end

  resources :projects, only: [] do
    resources :project_features
  end

  resources :features, except: [:new, :edit]

  # resources :room_features,  only: [:new, :create, :index]

	get '/' => 'home#index', as: :home
  get '/contact' => 'home#show', as: :contact_us
	get '/dashboard' => 'users#show', as: :dashboard
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
  post '/users/:user_id/price_features' => 'price_features#create', as: :price_features
	# post '/users/:user_id/rates' =>'rates#create', :as => :rates
end
