Rails.application.routes.draw do
  devise_for :users
  resources :links do
    member do
      get "like", to: "links#upvote"
      get "dislike", to: "links#downvote"
    end
  end

  root to: 'links#index'

end
