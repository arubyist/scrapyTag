Rails.application.routes.draw do

	root 'entries#index'

	resources :entries 
	resources :tags
end
