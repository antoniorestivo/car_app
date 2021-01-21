Rails.application.routes.draw do
  namespace :api do
    get '/cars' => 'cars#index'
    post '/cars' => 'cars#create'
    get '/cars/:id' => 'cars#show'
    patch '/cars/:id' => 'cars#update'
    delete '/cars/:id' => 'cars#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
