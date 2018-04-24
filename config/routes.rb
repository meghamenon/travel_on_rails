Rails.application.routes.draw do
	
	root to: 'homepage#index'
	get '/users/new', to: 'users#new', as: "user_new"
	post '/users', to: 'users#create'
	get '/login', to: 'sessions#new', as: "login"
	post '/login', to: 'sessions#create'
	get '/users', to: 'users#index'
	get '/users/:id', to: 'users#show', as: 'user_show'
	get '/logout', to: 'sessions#destroy'
  	get '/blogs', to: 'blogs#new'
  	post '/blogs', to: 'blogs#create'
	get '/blogs/:id', to: 'blogs#show', as: 'blog'
	put '/blogs/:id', to: 'blogs#update', as: 'blog_update'
	delete '/blogs/:id', to: 'blogs#destroy', as: 'blog_delete'
	get '/cities', to: 'cities#index'
	get '/cities/:id', to: 'cities#show', as: 'city'
end
