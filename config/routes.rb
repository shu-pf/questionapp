Rails.application.routes.draw do
  get 'anser', to: 'anser#index'
  get 'anser/:id', to: 'anser#anser'
  post 'anser', to: 'anser#correct'
  delete 'anser', to: 'anser#wrong'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  root to: 'anser#index'
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
