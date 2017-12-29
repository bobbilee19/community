Rails.application.routes.draw do
  resources :categories
  resources :events do
    resources :attendees
  end
  resources :skills
  devise_for :users

  get 'welcome/home'
  root 'welcome#home'
end
