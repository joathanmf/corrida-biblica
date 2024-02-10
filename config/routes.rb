Rails.application.routes.draw do
  get '/', to: 'desafios#index'
  get '/desafio1', to: 'desafios#desafio1'
  get 'desafios/versiculo'

  root 'desafios#index'
end
