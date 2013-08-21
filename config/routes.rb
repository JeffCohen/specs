Specs::Application.routes.draw do

  root 'sessions#new'

  get "sign_in" => 'sessions#new'
  post "sign_in" => 'sessions#create'
  get "sign_out" => 'sessions#destroy'

end
