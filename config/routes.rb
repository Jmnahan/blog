Rails.application.routes.draw do
  root :to => 'articles#index' 
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'
  get '/articles/:id' => 'articles#show', as: 'show_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch '/articles/:id' => 'articles#update', as: 'patch_article'
  delete 'articles/:id' => 'articles#delete', as: 'articles_delete'
  # resources :articles

  Rails.application.routes.draw do
    resources :articles do
      resources :comments
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
