Rails.application.routes.draw do
  root 'quiz#index'
  post '/submit', to: 'quiz#submit'
  get '/complete', to: 'quiz#complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
