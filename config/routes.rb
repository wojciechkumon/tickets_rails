# frozen_string_literal: true

Rails.application.routes.draw do
  get 'events' => 'events#index'
  get 'events/new'
  post 'events' => 'events#create'
  get 'events/:id' => 'events#show'
  resources :tickets
  root to: 'tickets#index'
end
