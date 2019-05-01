Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# 以下のように全て個別に書いても構いません
  get '/roguins' => 'roguins#home'
  post '/roguins' => 'roguins#create'

end
