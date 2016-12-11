Rails.application.routes.draw do

  root   'static#home'

  get    'about',   to: 'static#about'

  get    'faq',     to: 'static#faq'

  get    'contact', to: 'static#contact'

  get    'signup',  to: 'users#new'
  post   'signup',  to: 'users#create'
  get    'me',      to: 'users#show', as: 'profile'

  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',   to: 'sessions#destroy'

  resources :users, :stores
  resource  :users, :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
