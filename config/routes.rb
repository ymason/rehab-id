Rails.application.routes.draw do

  resources :appointments
  devise_for :users

	resources :users, only: [] do
  	resources :projects
    resources :price_features
    resources :lender_underwritings
    resources :loan_quotes
    resources :lender_loans
  end



  resources :projects, only: [] do
    resources :project_features
  end


  resources :lender_quotes, only: [] do
    resources :loan_applications
  end

  resources :users, only: [] do
  resources :projects, only: [] do
    resources :bids do
      end
    end
  end

  resources :bid_projects do
    resources :messages

      collection do 
        get :inbox
        get :all, action: :index
        get :sent 
        get :trash 

      end
    end

	root to: 'home#index'
  get '/contact' => 'home#show', as: :contact
	get '/dashboard' => 'users#show', as: :dashboard
  get '/projects/:project_id/add_rooms' => 'projects#rooms', as: :add_rooms
  patch '/projects/:project_id/add_rooms' => 'projects#create_rooms', as: :create_rooms
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
  post '/users/:user_id/price_features' => 'price_features#create', as: :price_features
  post '/users/:user_id/loan_quotes' => 'loan_quotes#create', as: :loan_quote
  post '/users/:user_id/lender_underwritings' => 'lender_underwritings#create', as: :lender_underwriting
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id' =>  'loan_applications#update', as: :loan_application
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/approved' =>  'loan_applications#approved', as: :loan_approved
  post '/users/:user_id/projects/:project_id/bids' => 'bids#create', as: :bids
  patch '/users/:user_id/projects/:project_id/bids/:id' => 'bids#update', as: :user_bids
  patch '/users/:user_id/projects/:project_id/bids/:bid_id/bid_projects/:id/accepted' =>  'bid_projects#update', as: :bid_accepted
  post '/bid_projects' => 'bid_projects#create', as: :conversation
  post '/bid_projects/:bid_project_id/messages' => 'messages#create', as: :conversation_messages
end
