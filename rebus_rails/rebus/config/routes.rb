Rails.application.routes.draw do

  root :to => 'posts#index'

# get "/posts" => "posts#index"

# post "/posts" => "posts#get_photo"


post "/posts/create" => "posts#create"

end
