Omrails::Application.routes.draw do
  resources :pins

  devise_for :users

  root :to => 'pins#index'

  get 'about' => 'pages#about'

  get 'pins' => 'pins/pin'

  get "pages/home"

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
#== Route Map
# Generated on 02 Jul 2013 02:30
#
#                          POST   /pins(.:format)           pins#create
#                  new_pin GET    /pins/new(.:format)       pins#new
#                 edit_pin GET    /pins/:id/edit(.:format)  pins#edit
#                      pin GET    /pins/:id(.:format)       pins#show
#                          PUT    /pins/:id(.:format)       pins#update
#                          DELETE /pins/:id(.:format)       pins#destroy
#         new_user_session GET    /users/sign_in(.:format)  devise/sessions#new
#             user_session POST   /users/sign_in(.:format)  devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format) devise/sessions#destroy
# cancel_user_registration GET    /users/cancel(.:format)   devise/registrations#cancel
#        user_registration POST   /users(.:format)          devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)  devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)     devise/registrations#edit
#                          PUT    /users(.:format)          devise/registrations#update
#                          DELETE /users(.:format)          devise/registrations#destroy
#                     root        /                         pins#index
#                    about GET    /about(.:format)          pages#about
#                          GET    /pins(.:format)           pins/pin#pins
#               pages_home GET    /pages/home(.:format)     pages#home
