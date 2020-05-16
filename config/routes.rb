Rails.application.routes.draw do

  get 'welcome/index'
  resources :food_items
  root 'welcome#index', as: 'welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
