Rails.application.routes.draw do
  devise_for :users

  root to: 'books#index'
  resources :books
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
