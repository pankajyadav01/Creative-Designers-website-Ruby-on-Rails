Rails.application.routes.draw do
  resources :results
  get 'payments/checkout'

resources :contactus
devise_for :users, :controllers => { :registrations => "registrations"}
resources :products do
	resources :comments
end
		get 'home/ContactUs'
	get 'home/Login'
get 'home/Store'
get 'home/blogs'
get 'home/index'
	resources :home
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
