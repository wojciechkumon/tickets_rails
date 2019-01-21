# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :events, :only => [:index, :new, :create, :show]
  resources :tickets
  root to: 'index#index'
end
