Rails.application.routes.draw do
  root 'quiz#index'
  get '/quiz', to: 'quiz#quiz'
  post '/submit', to: 'quiz#submit'
  get '/complete', to: 'quiz#complete'
end
