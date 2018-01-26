Rails.application.routes.draw do
  resources :events do
    resources :attendees
  end
  resources :categories
  resources :skills
  devise_for :users, :controllers => {:registrations => "registrations"}

  get 'welcome/home'
  root 'welcome#home'
end
