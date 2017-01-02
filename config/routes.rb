Rails.application.routes.draw do

  root 'notes#new'

  get '/new' => 'notes#new'

  post 'notes' => 'notes#create'

  get 'note' => 'notes#show'

  get 'notes' => 'notes#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
