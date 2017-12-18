Rails.application.routes.draw do

	devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "welcome" => "welcome#index"
  get "dashboard" => "dashboard#index"

  resources :students 

  resources :answers 

  resources :users

  resources :admin

  resources :dashboard

	resources :articles

	resources :facts

  resources :questions

  root 'welcome#index'
end
