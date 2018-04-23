Rails.application.routes.draw do
	
	root to: 'homepage#index'
	get '/users/new', to: 'users#new'
	post '/users', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	get '/users', to: 'users#index'
	get '/users/:id', to: 'users#show'
	# get '/logout', to: 'sessions#destroy'
	# get '/homepage', to: 'homepage#index'
	# post '/user', to: 'homepage#index' 
  get '/blogs', to: 'blogs#new'
  post '/blogs', to: 'blogs#create'
	# get '/blog/:id', to: 'blog#show'
	# get '/profile/:id', to: 'profile#show'
	# get '/blog/:id', to: 'blog#destroy'
	# put '/blog/:id', to: 'blog#update'
	get '/cities/:id', to: 'cities#show'
	# put '/profile/:id', to: 'profile#update'
	# get '/cities/:id/blogs', to: 'blog#index'
	# get '/user/:id/blogs', to: 'blog#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
