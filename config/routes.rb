Rails.application.routes.draw do
  get '/', to: 'desafios#index'
  get '/desafio1', to: 'desafios#desafio1'
  get 'desafios/versiculo'
  get 'desafios/config_modal'
  post 'desafios/config_salvar'

  root 'desafios#index'
end
