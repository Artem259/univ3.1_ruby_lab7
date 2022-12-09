Rails.application.routes.draw do
  root 'forms#index', as: 'home'
  resources :forms
end
