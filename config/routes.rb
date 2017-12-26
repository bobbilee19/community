Rails.application.routes.draw do
  resources :skills
  resources :categories
  resources :attendees
  resources :events
  devise_for :users

  get 'welcome/home'
  root 'welcome#home'
end
