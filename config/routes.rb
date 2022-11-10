Rails.application.routes.draw do
  # # LIST RESTAURANTS
  # get 'restaurants', to: 'restaurants#index'

  # # ADD RESTAURANT (redirects to the show view of that new restaurant)
  # # return HTML form to create the new restaurant
  # get 'restaurants/new', to: 'restaurants#new'
  # # creates a new restaurant
  # post 'restaurants', to: 'restaurants#create'

  # # DETAILS RESTAURANT (including reviews)
  # get 'restaurants/:id', to: 'restaurants#show', as: :show_restaurant

  # # ADD REVIEW to a restaurant
  # # return HTML form to edit the review
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_review
  # # creates a new review
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
