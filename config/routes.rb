Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  resources :articles do 
  	collection do
  		post "active" 
  	end
  end
  resources :comments do
  	collection do 
  		get "popup"
  	end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
