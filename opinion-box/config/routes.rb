Rails.application.routes.draw do
  get '/post/:id' => 'post#show'
  get '/secret' => 'post#secret'
  get '/post/new/:id' => 'post#new'
  post '/post/create' => 'post#create'
  get '/post/plus/:id' => 'post#plus'
  get '/post/minus/:id' => 'post#minus'
  root :to => 'post#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
