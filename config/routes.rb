Rails.application.routes.draw do
  get 'todos/create'

  resources :categories do
  	resources :todos
  end
  get 'categories/index'
  root 'categories#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
