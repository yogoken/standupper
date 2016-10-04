# == Route Map
#
# Prefix Verb URI Pattern Controller#Action
#   root GET  /           top#index
#

Rails.application.routes.draw do
  root to: 'top#index'
  resources :articles, only: :show
end
