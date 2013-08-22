Specs::Application.routes.draw do

  resources :items

  resources :projects do
    get 'rules', on: :member
    get 'worries', on: :member
  end

  root 'projects#index'

  get "sign_in" => 'sessions#new'
  post "sign_in" => 'sessions#create'
  get "sign_out" => 'sessions#destroy'

end
