Rails.application.routes.draw do
  # resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'articles' => 'article#index'
  get 'articles/:id' => 'article#show'
  post 'articles' => 'article#create'
  put 'articles/:id' => 'article#update'
  delete 'articles/:id' => 'article#destroy'
end
