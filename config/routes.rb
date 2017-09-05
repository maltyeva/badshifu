Rails.application.routes.draw do
  #this be for images
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'industries#index'
  get "/industries/:id", to: 'industries#show', as: "shifus"

  resources :industries
  resources :workers
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
