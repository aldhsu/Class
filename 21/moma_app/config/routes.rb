Rails.application.routes.draw do
  resources :artists
  resources :works
#       artists GET    /artists(.:format)          artists#index
#             POST   /artists(.:format)          artists#create
#  new_artist GET    /artists/new(.:format)      artists#new
# edit_artist GET    /artists/:id/edit(.:format) artists#edit
#      artist GET    /artists/:id(.:format)      artists#show
#             PATCH  /artists/:id(.:format)      artists#update
#             PUT    /artists/:id(.:format)      artists#update
#             DELETE /artists/:id(.:format)      artists#destroy
#       works GET    /works(.:format)            works#index
#             POST   /works(.:format)            works#create
#    new_work GET    /works/new(.:format)        works#new
#   edit_work GET    /works/:id/edit(.:format)   works#edit
#        work GET    /works/:id(.:format)        works#show
#             PATCH  /works/:id(.:format)        works#update
#             PUT    /works/:id(.:format)        works#update
#             DELETE /works/:id(.:format)        works#destroy
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
