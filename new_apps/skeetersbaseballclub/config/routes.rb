Skeetersbaseballclub::Application.routes.draw do
  
  get 'teams/:id/dashboard' => "teams#dashboard"
  get 'teams/:id/team-news', to: 'teams#team_news'
  resources :teams do
    resources :posts
    resources :events
    resources :profiles
  end

  resources :posts
  
  


  #resources :posts


  get "team-info" => 'pages#team_info', as: "info"

  get "member/dashboard"
  get "admin/dashboard"
  get "admin/schedule"
  get "admin/roster"
  get "team-portal" => "pages#team_portal"
  get "main" => "pages#main"

  devise_for :users, controllers: { invitations: "invitations"}
  
 


  resources :users
  get "sample" => "pages#sample"
  get "dashboard" => "pages#dashboard"
  get "roster" => "pages#roster"
  get "schedule" => "pages#schedule"
  get "pages/home"
  get "pages/sponsors"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
