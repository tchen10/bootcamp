BootcampApp::Application.routes.draw do
  # Routes for SignIn/SignOut
  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create', as: 'sessions'
  delete '/sessions' => 'sessions#destroy', as: 'session'

  # Routes for the Assignment resource:
  # CREATE
  get '/assignments/new', controller: 'assignments', action: 'new', as: 'new_assignment'
  post '/assignments', controller: 'assignments', action: 'create'

  # READ
  get '/assignments', controller: 'assignments', action: 'index', as: 'assignments'
  get '/assignments/:id', controller: 'assignments', action: 'show', as: 'assignment'

  # UPDATE
  get '/assignments/:id/edit', controller: 'assignments', action: 'edit', as: 'edit_assignment'
  put '/assignments/:id', controller: 'assignments', action: 'update'

  # DELETE
  delete '/assignments/:id', controller: 'assignments', action: 'destroy'
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get '/projects/new', controller: 'projects', action: 'new', as: 'new_project'
  post '/projects', controller: 'projects', action: 'create'

  # READ
  get '/projects', controller: 'projects', action: 'index', as: 'projects'
  get '/projects/:id', controller: 'projects', action: 'show', as: 'project'

  # UPDATE
  get '/projects/:id/edit', controller: 'projects', action: 'edit', as: 'edit_project'
  put '/projects/:id', controller: 'projects', action: 'update'

  # DELETE
  delete '/projects/:id', controller: 'projects', action: 'destroy'
  #------------------------------

  root :to => 'users#index'
  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

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
