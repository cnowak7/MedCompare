Rails.application.routes.draw do
  #get 'sessions/new'

  resources :users
  resources :sessions
  resources :categories
  resources :manufacturers
  resources :vendors
  resources :clinics
  resources :products
  resources :manufactures
  resources :suppliers
  resources :products

  get 'index' => "home#index"

  get 'about' => "home#about"

  get 'contact' => "home#contact"

  get 'catalog' => "home#catalog"

  # Vendor's "My Products" Section

  get "myProducts" => "vendors#products", :as => "my_products"

  get "addProduct" => "vendors#add_product_view", :as => "vendor_add_product_view"

  post "addProductAction" => "vendors#add_product_action", :as => "vendor_add_product_action"

  get "editProduct/:id" => "vendors#edit_product", :as => "vendor_edit_product"

  patch "updateProduct/:id" => "vendors#update_product", :as => "vendor_update_product"

  delete "deleteProduct/:id" => "vendors#destroy_product", :as => "vendor_delete_product"

  # Clinic Sign Up

  get "clinicSignup" => "clinics#sign_up_view", :as => "clinic_sign_up_view"

  post "clinicSignupAction" => "clinics#sign_up_action", :as => "clinic_sign_up_action"

  # Clinic Log In

  get "clinicLogin" => "clinics#log_in_view", :as => "clinic_log_in_view"

  post "clinicLoginAction" => "clinics#log_in_action", :as => "clinic_log_in_action"

  # Vendor Sign Up

  get "vendorSignup" => "vendors#sign_up_view", :as => "vendor_sign_up_view"

  post "vendorSignupAction" => "vendors#sign_up_action", :as => "vendor_sign_up_action"

  # Vendor Login

  get "vendorLogin" => "vendors#log_in_view", :as => "vendor_log_in_view"

  post "vendorLoginAction" => "vendors#log_in_action", :as => "vendor_log_in_action"

  # General Login

  get "login" => "home#login"

  # Admin Login

  get "admin" => "sessions#new"

  # Product Compare Cart
  get "productCompareCart" => "home#productCompareCart"

  post "home/addToProductCompareCart"

  post "home/removeFromProductCompareCart"

  # Wish List
  get "wishList" => "home#wishList"

  post "home/addToWishList"

  post "home/removeFromWishList"

  # Catalog and Product Search

  post "home/catalog" => "home#filter_products"

  get '/product_info' => 'home#product_info'

  get '/vendor_info' => 'home#vendor_info'

  get 'home/search' => "home#search"

  post 'home/search'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
