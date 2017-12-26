Rails.application.routes.draw do
  resources :events
  devise_for :users
  get 'welcome/home'
  root 'welcome#home'
end
