Rails.application.routes.draw do

  devise_for :users

	resources :users, only: [] do
  	resources :projects
  end

  resources :users, only: [] do
    resources :price_features
  end

  resources :projects, only: [] do
    resources :project_features
  end

  resources :users, only: [] do
    resources :lender_underwritings
  end

  resources :users, only: [] do
    resources :loan_quotes
  end

  resources :lender_quotes, only: [] do
    resources :loan_applications
  end

	get '/' => 'home#index', as: :home
  get '/contact' => 'home#show', as: :contact
	get '/dashboard' => 'users#show', as: :dashboard
  get '/projects/:project_id/add_rooms' => 'projects#rooms', as: :add_rooms
  patch '/projects/:project_id/add_rooms' => 'projects#create_rooms', as: :create_rooms
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
  post '/users/:user_id/price_features' => 'price_features#create', as: :price_features
  post '/users/:user_id/loan_quotes' => 'loan_quotes#create', as: :loan_quote
  post '/users/:user_id/lender_underwritings' => 'lender_underwritings#create', as: :lender_underwriting
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id' =>  'loan_applications#update', as: :loan_application
end
