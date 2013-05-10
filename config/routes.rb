 FreshBuilt::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'home#index'
  resources :users do
    resources :photos
    collection do
      post 'search'
    end
    resources :photos
  end

  resources :companies

  resources :workouts

  post '/workouts/schedule' => 'workouts#schedule'

  post '/login' => 'users#login'
  get '/logout' => 'session#destroy'

  get '/about' => 'home#about'
  get '/company_list' => 'home#company_list'

  get '/checkin' => 'checkins#index'
  post '/checkin' => 'checkins#create'
  post '/record' => 'checkins#record'
  get '/stats' => 'checkins#stats'
  post '/update' => 'checkins#update'

  get '/match' => 'match#index'
  post '/match/filter' => 'match#filter'
  post '/match/search' => 'match#search'

  get '/calendar' => 'calendar#index'

  get '/message' => 'messages#index'
  get '/message/new' => 'messages#new'
  post '/message/create' => 'messages#create'
  post '/message/reply' => 'messages#reply'



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

