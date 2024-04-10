Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
    member do
      get "like", to: "links#upvote"
      get "dislike", to: "links#downvote"
    end
    resources :comments
  end

  root to: 'links#index'

end
