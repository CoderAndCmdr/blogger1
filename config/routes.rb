Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  resources :tags
  resources :authors

end
