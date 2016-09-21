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

  resources :projects, only: [] do
    resources :rooms
  end

  resources :features, except: [:new, :edit]

  # resources :room_features,  only: [:new, :create, :index]

	get '/' => 'home#index', as: :home
  get '/contact' => 'home#show', as: :contact
	get '/dashboard' => 'users#show', as: :dashboard
  get '/projects/:project_id/add_rooms' => 'projects#rooms', as: :add_rooms
  patch '/projects/:project_id/add_rooms' => 'projects#create_rooms', as: :create_rooms
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
  post '/users/:user_id/price_features' => 'price_features#create', as: :price_features
  post '/projects/:project_id/rooms' => 'rooms#create', as: :create_project_rooms
	# post '/users/:user_id/rates' =>'rates#create', :as => :rates
end
