Bogoapp::Application.routes.draw do

  resources :blogs


  

  resources :administrators


  resources :categories

  
  

  match "posts/category" => "posts#category"
  resources :posts


  resources :links


  resources :lists do
    resources :items
  end
  

  resources :transactions


  resources :notes
  match "tutorials", to: "pages#tutorials", as: "tutorials"
  match "terms-of-service", to: "pages#terms_of_service", as: "terms"
  get "pages/sign_in"
  match 'sign-in', to: 'pages#sign_in', as: 'sign_in'
  get "pages/home_alt"
  get "users/show"

  match 'sign-up', to: 'identities#new', as: 'new_account'
  resources :identities

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  

  resources :relationships, only: [:create, :destroy]

  resources :users do
    member do
      get :following, :followers
    end
  end
  root to: "pages#home"
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  mount RedactorRails::Engine => '/redactor_rails'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
