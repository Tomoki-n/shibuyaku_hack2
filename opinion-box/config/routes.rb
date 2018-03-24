Rails.application.routes.draw do
  get '/post/:id' => 'post#show'
  get '/secret' => 'post#secret'
  get '/post/new/:id' => 'post#new'
  post '/post/create' => 'post#create'

 root :to => 'post#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
