Rails.application.routes.draw do

  devise_for :users

  	resources :users, only: [:index] do
    	resources :projects, except: [:index]
	end

	resources :projects, only: [:index] do
   		resources :project_features, except: [:create]
   	end

  # resources :room_features,  only: [:new, :create, :index]

	get '/' => 'home#index', as: :home
  get '/contact' => 'home#show', as: :contact_us
	get '/dashboard' => 'users#show', as: :dashboard
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
	# post '/users/:user_id/rates' =>'rates#create', :as => :rates
end
