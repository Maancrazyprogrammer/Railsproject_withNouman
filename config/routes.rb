Rails.application.routes.draw do
  root 'books#index'
    resources:users 
    resources:books

  get '/search' => "books#search"
    
end
