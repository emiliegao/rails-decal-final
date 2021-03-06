Rails.application.routes.draw do
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root to: "home#index"
  	get '/', to: 'home#index'
  	post '/create', to: "requests#create", as: 'create'
  	get '/new', to: "requests#new", as: 'new'
 	delete '/delete', to: "requests#delete", as: 'delete'
 	get 'show', to: "requests#show"
 	get '/requests', to: 'requests#index', as: 'requests'
 	get '/profile', to: 'users#profile', as: 'profile'
 	get '/dogs', to: 'dogs#index', as: 'dogs'
 	get '/dogs/new', to: 'dogs#new', as: 'new_dog'
 	post '/dogs', to: "dogs#create", as: 'create_dog'
 	get '/dogs/:id(.:format)', to: "dogs#show", as: 'dog'
  	resources :requests
end
