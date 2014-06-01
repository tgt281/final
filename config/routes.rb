Final::Application.routes.draw do

  # Home page
  get "/" => "chocolatiers#index"


  # Sign-In and Sign-Out
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'
  get "/logout" => 'sessions#logout'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:username" => 'users#show'

  # -- Update
  get "/users/:username/edit" => 'users#edit'
  patch "/users/:username" => 'users#update'

  # --- Delete
  delete "/users/:username" => 'users#destroy'


  # Resource: Reviews

  # --- Create
  get "/reviews/new" => 'reviews#new'
  post "/reviews" => 'reviews#create'

  # --- Read
  get "/reviews" => 'reviews#index'
  get "/reviews/:id" => 'reviews#show'

  # -- Update
  get "/reviews/:id/edit" => 'reviews#edit'
  patch "/reviews/:id" => 'reviews#update'

  # --- Delete
  delete "/reviews/:id" => 'reviews#destroy'


  # Resource: Chocolates

  # --- Create
  get "/chocolates/new" => 'chocolates#new'
  post "/chocolates" => 'chocolates#create'

  # --- Read
  get "/chocolates" => 'chocolates#index'
  get "/chocolates/:id" => 'chocolates#show'

  # -- Update
  get "/chocolates/:id/edit" => 'chocolates#edit'
  patch "/chocolates/:id" => 'chocolates#update'

  # --- Delete
  delete "/chocolates/:id" => 'chocolates#destroy'


  # Resource: Chocolatiers

  # --- Create
  get "/chocolatiers/new" => 'chocolatiers#new'
  post "/chocolatiers" => 'chocolatiers#create'

  # --- Read
  get "/chocolatiers" => 'chocolatiers#index'
  get "/chocolatiers/:id" => 'chocolatiers#show'

  # -- Update
  get "/chocolatiers/:id/edit" => 'chocolatiers#edit'
  patch "/chocolatiers/:id" => 'chocolatiers#update'

  # --- Delete
  delete "/chocolatiers/:id" => 'chocolatiers#destroy'


  # Resource: Type

  # --- Read
  get "/type" => 'type#index'
  get "/type/:id" => 'type#show'


  # Resource: Category

  # --- Read
  get "/category" => 'category#index'
  get "/category/:id" => 'category#show'




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
