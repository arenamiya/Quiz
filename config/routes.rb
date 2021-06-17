Rails.application.routes.draw do
  root 'quiz#index'
  post '/submit', to: 'quiz#submit'
  get '/complete', to: 'quiz#complete'
end
