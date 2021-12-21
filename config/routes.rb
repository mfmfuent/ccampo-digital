Rails.application.routes.draw do
  
  resources :marca_maquinaria
  resources :tipo_maquinaria
  resources :registro_mantencions
  resources :maquinaria
  resources :tipo_mantencions
  resources :calificacions
  resources :trabajadors
  resources :tipo_trabajadors
  resources :cultivos
  resources :bodegas
  resources :trabajos
  resources :fitosanitarios
  resources :actividad_paras
  resources :actividads
  resources :representacions
  resources :asesors
  resources :representantes
  resources :campos
  resources :explotacions
  resources :usuarios
  get 'store/index'
  get 'store/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
