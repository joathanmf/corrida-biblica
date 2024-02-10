class DesafiosController < ApplicationController
  before_action :set_service, only: [:versiculo]

  def index; end

  def desafio1; end

  def versiculo
    @versiculo = @versiculo_service.versiculo
  end

  private

  def set_service
    @versiculo_service = VersiculoService.new
  end
end
