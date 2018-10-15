Rails.application.routes.draw do
	root "events#index"
  resources :events do
  	member do
  		get :confirm_email
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
