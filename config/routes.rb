Rails.application.routes.draw do

	#root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # post 'todos/api'

  resources :todos do
  	
  	resources :items
  end

end
