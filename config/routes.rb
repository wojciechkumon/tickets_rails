# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tickets
  root to: 'tickets#index'
end
