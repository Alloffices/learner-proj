Rails.application.routes.draw do
	#routes.rb
	devise_for :users, :path_prefix => 'd'
	resources :users

	resources :posts
	resources :devtools

	root 'posts#index'
	# root "welcome#index"
	
	get '*path' => redirect('/')
end

