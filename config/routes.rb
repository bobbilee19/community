Rails.application.routes.draw do
  resources :skills
  resources :categories
  resources :events do
    resources :attendees
  end
  devise_for :users

  get 'welcome/home'
  root 'welcome#home'
end
