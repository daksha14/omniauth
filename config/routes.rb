Rails.application.routes.draw do
  resources :books
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  as :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
 end    

 root 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
