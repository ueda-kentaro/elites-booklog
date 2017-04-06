Rails.application.routes.draw do
  devise_for :users

  root to: 'books#index'
  resources :books 
  resources :bookmarks, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
  resources :categories, only: [:create, :destory]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
