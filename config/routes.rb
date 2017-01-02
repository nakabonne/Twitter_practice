Rails.application.routes.draw do

  root 'notes#index'

  get '/new' => 'notes#new'

  post 'notes' => 'notes#create'

  get 'note/:id' => 'notes#show' ,as:'note'

  get 'notes' => 'notes#index'

  get 'edit/:id' => 'notes#edit',as:'edit'

  patch 'notes/:id' => 'notes#update',as:'update_note'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
