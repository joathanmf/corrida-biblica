class DesafiosController < ApplicationController
  before_action :set_service, :set_versiculo, only: %i[desafio1 versiculo]

  def index; end

  def desafio1; end

  def versiculo
    render turbo_frame: 'versiculo', locals: { versiculo: @versiculo }
  end

  private

  def set_versiculo
    @versiculo = @versiculo_service.versiculo
  end

  def set_service
    @versiculo_service = VersiculoService.new
  end
end
