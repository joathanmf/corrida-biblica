# frozen_string_literal: true

Rails.application.routes.draw do
  get '/', to: 'challengers#index'
  get '/challenger', to: 'challengers#challenger'
  get 'challengers/verse', to: 'challengers#verse'
  get 'challengers/config_modal', to: 'challengers#config_modal'
  post 'challengers/save_config', to: 'challengers#save_config'

  root 'challengers#index'
end
