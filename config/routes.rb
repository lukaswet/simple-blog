Rails.application.routes.draw do
  devise_for :users
  # get '/' => 'home#index'
  
  root to: "home#index"
  
  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  resources :articles do
    resources :comments
  end
  
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
