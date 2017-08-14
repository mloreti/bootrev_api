Rails.application.routes.draw do
  get 'boots/index'

  get 'boots/show'

  get 'boots/create'

  get 'boots/destory'

  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :show, :destroy]
end
