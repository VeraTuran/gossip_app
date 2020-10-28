# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

1. rails _5.2.3_ new -d postgresql nom_de_ton_app 
2. Add to  Gemfile : 
gem 'execjs'
gem 'therubyracer'
3. bundle install / bundle update 
4. Create database : rails generate model User 
ou 
rails generate migration User (juste la table)
5. Migrer les bases de donées : 
rails db:migrate 
6. Créer de faux User 
Compléter le seed 
rails db:seed 
7. Faire les tests : rails c
8. Créer un controller (par exemple pour nos pages statiques) :
rails generate controller static_pages home
9.1. Créer nos routes statiques
get '/static_pages/contact', to: 'static_pages#contact'
+ rails route pour obtenir les infos sur nos routes
9.2.1 Créer nos routes dynamiques  :
get '/users/:un_nom_de_variable', to: 'users#méthode'
9.2.2 Récupérer une variable globale pour une route dynamique : 
class UsersController < ApplicationController
  def méthode
    @user = User.find(params[:un_nom_de_variable])
  end
end
A SAVOIR : Lors de la création d'une route on appelle comment doit se présenter la page d'arrivé à l'aide de l'appel d'une méthode dans le fichier controller
