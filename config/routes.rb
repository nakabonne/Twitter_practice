Rails.application.routes.draw do

  get 'new' => 'notes#new'

  post 'notes' => 'notes#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
