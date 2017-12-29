Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :policies
    resources :parties do
      resources :candidates
  end
    
    post 'cast_vote', to: 'users#cast_vote'
    get '/users/:id', to: 'users#index'

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
