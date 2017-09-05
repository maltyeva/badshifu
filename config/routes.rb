Rails.application.routes.draw do
  get 'messages/new'

  #this be for images
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'industries#index'
  get "/industries/:id", to: 'industries#show', as: "shifus"

  resources :industries
  resources :workers
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

end
