Rails.application.routes.draw do

  devise_for :users

	resources :users, only: [] do
  	resources :projects, except: [:create, :update]
    resources :price_features, except: [:create]
    resources :lender_underwritings, except: [:create]
    resources :loan_quotes, except: [:create]
    resources :lender_loans
  end

  resources :projects, only: [] do
    resources :project_features, except: [:create]
  end

  resources :lender_quotes, only: [] do
    resources :loan_applications, except: [:edit]
  end

  resources :users, only: [] do
  resources :projects, only: [] do
    resources :bids, except: [:create] do
      resources :bid_projects, except: [:create] do
        resources :messages, except: [:create]

          collection do 
            get :inbox
            get :all, action: :index
            get :sent 
            get :trash 

          end
        end
      end
    end
  end

  resources :users, only: [] do
  resources :contractor_bids do
    resources :appointments, except: [:new, :index]
      end
    end

	root to: 'home#index'
  get '/contact' => 'home#contact', as: :contact
	get '/dashboard' => 'users#show', as: :dashboard
  post '/users/:user_id/projects' => 'projects#create', as: :projects
  patch '/users/:user_id/projects/:id/' => 'projects#update', as: :add_rooms
  post '/projects/:project_id/project_features' => 'project_features#create', as: :project_features
  get ':project_id/project_features/rooms' => 'project_features#rooms', as: :rooms
  post '/projects/:project_id/project_features/rooms' => 'project_features#create_rooms', as: :create_rooms
  post '/users/:user_id/price_features' => 'price_features#create', as: :price_features
  post '/users/:user_id/loan_quotes' => 'loan_quotes#create', as: :loan_quote
  post '/users/:user_id/lender_underwritings' => 'lender_underwritings#create', as: :lender_underwriting
  get '/lender_quotes/:lender_quote_id/loan_applications/:id/step1' => 'loan_applications#edit', as: :loan_edit
  get '/lender_quotes/:lender_quote_id/loan_applications/:id/step2' => 'loan_applications#edit2', as: :loan_edit2
  get '/lender_quotes/:lender_quote_id/loan_applications/:id/step3' => 'loan_applications#edit3', as: :loan_edit3
  get '/lender_quotes/:lender_quote_id/loan_applications/:id/step4' => 'loan_applications#edit4', as: :loan_edit4
  get '/lender_quotes/:lender_quote_id/loan_applications/:id/step5' => 'loan_applications#edit5', as: :loan_edit5
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id' =>  'loan_applications#update', as: :loan_application
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/2' =>  'loan_applications#update2', as: :loan_application2
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/3' =>  'loan_applications#update3', as: :loan_application3
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/4' =>  'loan_applications#update4', as: :loan_application4
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/5' =>  'loan_applications#update5', as: :loan_application5
  patch '/lender_quotes/:lender_quote_id/loan_applications/:id/approved' =>  'loan_applications#approved', as: :loan_approved
  post '/users/:user_id/projects/:project_id/bids' => 'bids#create', as: :bids
  patch '/users/:user_id/projects/:project_id/bids/:id' => 'bids#update', as: :user_bids
  patch '/users/:user_id/projects/:project_id/bids/:bid_id/bid_projects/:id/accepted' =>  'bid_projects#update', as: :bid_accepted
  post '/bid_projects' => 'bid_projects#create', as: :conversation
  post '/bid_projects/:bid_project_id/messages' => 'messages#create', as: :conversation_messages
  get '/users/:user_id/contractor_bids/:id/appointment' => 'contractor_bids#appointment', as: :appointment
  patch '/users/:user_id/contractor_bids/:ids' => 'contractor_bids#update', as: :submit_bid

end


