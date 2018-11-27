Rails.application.routes.draw do
  #kind of route
  #controller#method name
  root 'subs#index'
  #
  # get 'subs/new'
  # #this is a better way to write it as the get can be anything you want.
  # get '/subs/new', to: 'subs#new'
  #
  # post '/subs', to: 'subs#create'
  # #:id is placehold for whatever you are updating - same with delete
  # put '/subs/:id', to: 'subs#update'
  # delete '/subs/:id', to: 'subs#delete'

 #embedded routes - or nested routes
  resources :subs do
    resources :topics 
  end


end
