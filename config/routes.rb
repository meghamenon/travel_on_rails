

Rails.application.routes.draw do

  root to: 'homepage#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'


  resources :users do
    resources :blogs
  end

  resources :cities do
    resources :blogs do

    end
  end

end


# Rails.application.routes.draw do
#
# 	root to: 'homepage#index'
# 	get '/users/new', to: 'users#new', as: 'user_new'
# 	post '/users', to: 'users#create'
# 	get '/login', to: 'sessions#new', as: 'login'
# 	post '/login', to: 'sessions#create'
# 	get '/users', to: 'users#index'
# 	get '/users/:id', to: 'users#show', as: 'user_show'
# 	get '/logout', to: 'sessions#destroy'
#   get '/blogs', to: 'blogs#new', as: 'blog_new'
#   post '/blogs', to: 'blogs#create'
# 	get '/blogs/:id', to: 'blogs#show', as: 'blog_show'
# 	put '/blogs/:id', to: 'blogs#update', as: 'blog_update'
# 	get '/blogs/:id', to: 'blogs#edit', as: 'blog_edit'
# 	delete '/blogs/:id', to: 'blogs#destroy', as: 'blog_delete'
# 	get '/cities', to: 'cities#index'
# 	get '/cities/:id', to: 'cities#show', as: 'city'
# end
