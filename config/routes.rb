Rails.application.routes.draw do
  get 'relationships/follow_user'
  get 'relationships/unfollow_user'
  post ':username/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':username/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user

get 'tweets/browse'
  get 'profiles/show'
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :tweets do
    member do
      get 'like'
      get 'unlike'
    end
  end
  
  get ':username', to: 'profiles#show', as: :profile
  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
