Rails.application.routes.draw do
  namespace :api do
    get 'greetings/index', only: [:index]
    get 'greetings/random_greeting'
  end
end

