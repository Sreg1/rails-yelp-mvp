Rails.application.routes.draw do
  # LIST RESTAURANTS
  GET 'restaurants', to: 'restaurants#index'

  # ADD RESTAURANT (redirects to the show view of that new restaurant)
  # return HTML form to create the new restaurant
  GET 'restaurants/new', to: 'restaurants#new'
  # creates a new restaurant
  POST 'restaurants', to: 'restaurants#create'

  # DETAILS RESTAURANT (including reviews)
  GET 'restaurants/:id', to: 'restaurants#show'

  # ADD REVIEW to a restaurant
  # return HTML form to edit the review
  GET 'restaurants/:id/reviews/new', to: 'restaurants/reviews#new'
  # creates a new review
  POST 'restaurants/:id/reviews', to: 'restaurants/reviews#create'
end
