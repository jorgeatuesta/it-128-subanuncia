Rails.application.routes.draw do
  #devise_for :users
  devise_for :users, controllers: {
      registrations: 'users/registrations',
      users: 'users/sessions'
  }
  root  'home#init'
  resources :roles
  resources :history_announcements
  resources :messages
  resources :announcements
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
		post 'authentication_tokens/create', to: "authentication_tokens#create"
  end

end
