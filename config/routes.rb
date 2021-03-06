Rails.application.routes.draw do


  get 'user_profile' => 'relationships#show_user'

  post 'now_following' => 'relationships#now_following'

  post 'unfollow' => 'relationships#unfollow'

  resources :profiles
  resources :posts
  resources :drinks
  resources :relationships
 
  get 'profile/user_page'

  get 'drinks' => 'drinks#show'

  get 'your_drinks' => 'drinks#your_drinks'

  get 'user_drinks' => 'drinks#user_drinks'

  get 'posts/edit'

  get 'drinks/edit'

  get 'posts' => 'posts#show'


  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'profile' => 'profile#user_page'

  root 'static_pages#home'

  get 'about' => 'static_pages#about'

  get 'video' => 'static_pages#video'

  get 'download' => 'static_pages#download'

  get 'blog' => 'static_pages#blog'

  get 'team' => 'static_pages#team'

  get 'street_cred' => 'static_pages#street_cred'

  get 'press' => 'static_pages#press'

  get 'settings' => 'static_pages#settings'

  get 'contact' => 'static_pages#contact'



 

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
