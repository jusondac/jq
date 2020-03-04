Rails.application.routes.draw do
  resources :bootstrapings
  resources :javaqueries
  resources :csses
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
