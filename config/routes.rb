Rails.application.routes.draw do

  root 'pages#home'
  get 'home', to: 'pages#home'

  # get '/recipes', to: 'recipes#index'
  # get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  # post '/recipes', to: 'recipes#create'
  # post '/recipes/:id/edit', to: 'recipe#edit', as: 'edit_recipe'
  # patch '/recipes/:id', to: 'recipes#update'
  # get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  # delete '/recipes/:id', to: 'recipes#destroy'

  resources :recipes 
end
