#Jaymie Deschênes 20 octobre 2021
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'public#index'
  get '/recettes/:id', to: 'public#recette'
  get '/admin/recettes', to: 'admin/secret#home'
  get '/admin/recettes/:id', to: 'admin/secret#recette'
  get '/mesrecettes', to: 'private#home'
  get '/mesrecettes/:id', to: 'private#recette'

end
