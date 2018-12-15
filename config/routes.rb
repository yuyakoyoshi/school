Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get   '/top',            to:'root#top',     as: 'root_path'
  post  '/posts',          to:'posts#create', as: 'create_post'
  get   '/posts',          to:'posts#index',  as: 'index_post'
  get   '/posts/:id',      to:'posts#show',   as: 'post'
  get   '/posts/:id/edit', to:'posts#edit',   as: 'edit_post'
  patch '/posts/:id',      to:'posts#update', as: 'update_post'
end
