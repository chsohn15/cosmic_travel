Rails.application.routes.draw do
  resources :planets
  resources :scientists
  resources :missions
  get '/about', to: 'static#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
