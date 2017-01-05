Rails.application.routes.draw do
  get 'home/welcome'

  get 'home/find_workers'

  get 'edit_profile/:id' => 'home#edit_profile', as: :edit_profile
  put 'edit_profile/:id' => 'home#update_profile'

  resources :profession_types
  resources :professions
  devise_for :users

  root 'home#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
