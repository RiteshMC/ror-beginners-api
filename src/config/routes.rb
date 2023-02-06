Rails.application.routes.draw do
  # resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'articles' => 'article#index'
  get 'articles/:id' => 'article#show'
  post 'articles' => 'article#create'
  put 'articles/:id' => 'article#update'
  delete 'articles/:id' => 'article#destroy'

  get 'users' => 'user#index'
  get 'users/:id' => 'user#show'
  post 'users' => 'user#create'
  put 'users/:id' => 'user#update'
  delete 'users/:id' => 'user#destroy'
end
