Rails.application.routes.draw do
  resources :list_vinculations
  resources :lists
  resources :song_vinculations
  resources :userlists
  resources :searchlists
  wash_out :wslists
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
