Rails.application.routes.draw do
  root 'welcome#index'

  resources :users, only: [:index]	do
  	collection do
  		post '/upload' => 'users#upload_users'
  	end
  end
end
