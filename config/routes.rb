TeachBack::Application.routes.draw do
  devise_for :users


  #Set root to sign-in page

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  #Provides default path for signed in users
 
  match 'user_root' => 'users#show', as: :user_root, via: :all
  match '/users/sign_in' => 'home#index', via: :all

  #Make it possible for users to view their enrollments and created courses, consider routing
  resources :users do
    resources :course_enrollments
    #HAVE TO DECIDE HERE OR SEPERATE
    #resources :courses
  end

  resources :latest_feedbacks

  resources :notes

  resources :attendances

  resources :feedbacks

  resources :notifications

  resources :post_responses

  resources :posts

  resources :quiz_answers

  resources :quiz_questions

  resources :quizzes

#Don't want separate access consider deleting
#  resources :lectures

 #Don't want separate access consider deleting
 # resources :course_enrollments

  resources :courses do
    resources :lectures
  end

  #root :to => "home#index"

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
