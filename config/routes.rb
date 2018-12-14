Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  '/top',       to:'root#top', as: 'root_path'
  post '/posts',     to:'posts#create'
  get  '/posts',     to:'posts#index'
  get  '/posts/:id', to:'posts#show', as: 'post'
end
