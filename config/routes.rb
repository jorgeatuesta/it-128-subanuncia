Rails.application.routes.draw do
  resources :roles
  resources :history_announcements
  resources :messages
  resources :announcements
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
