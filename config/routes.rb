Rails.application.routes.draw do
  resources :attendees
  resources :events
  devise_for :users
  get 'welcome/home'
  root 'welcome#home'
end
