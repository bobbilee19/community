Rails.application.routes.draw do
  resources :events do
    resources :attendees
  end
  resources :categories
  resources :skills
  devise_for :users

  get 'welcome/home'
  root 'welcome#home'
end
