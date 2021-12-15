Rails.application.routes.draw do
  
  resources :representantes
  resources :campos
  resources :explotacions
  resources :usuarios
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
