Rails.application.routes.draw do
 namespace :api do
  get "villains" => "villains#index"
  get "/villains/:id" => "villains#show"
  post "/villains" => "villains#create"
  patch "/villains/:id" => "villains#update"
  delete "/villains/:id" => "villains#destroy"
 end
end
