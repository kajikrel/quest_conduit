Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'


  root 'articles#index'


  
  get "/create",to:"static_pages#create" 
  get "/profile",to:"static_pages#profile" 
  get  "/signup",  to: "users#new"



  #get  "/help", to: "static_pages#help"
  resources :users
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"


  resources :articles
end
