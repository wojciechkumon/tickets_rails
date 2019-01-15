# frozen_string_literal: true

Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  get 'events/create'
  get 'events/show'
  resources :tickets
  root to: 'tickets#index'
end
