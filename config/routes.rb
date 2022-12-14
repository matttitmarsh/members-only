Rails.application.routes.draw do
  resources :posts
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do
    get '/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
