# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events, :only => [:index, :new, :create, :show]
  # get 'events' => 'events#index'
  # get 'events/new'
  # post 'events' => 'events#create'
  # get 'events/:id' => 'events#show'
  resources :tickets
end
