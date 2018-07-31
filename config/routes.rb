Rails.application.routes.draw do
  get '/users', to: 'users#new', as: 'users'
  get '/', to: 'static_page#home', as: 'home'
  get '/contact', to: 'static_page#contact', as: 'contact'
  get '/about', to: 'static_page#about', as: 'about'
  post '/create', to: 'users#create', as: "create"
  get '/users/:id', to: 'users#show'
 
  get '/show/:name', to: 'users#show'
  
 end
