# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'products#index'
  resources :products
end
