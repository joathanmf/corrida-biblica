class DesafiosController < ApplicationController
  before_action :set_service, :set_versiculo, only: %i[versiculo]

  def index; end

  def desafio1; end

  def versiculo
    render turbo_frame: 'versiculo', locals: { versiculo: @versiculo }
  end

  def config_modal; end

  def config_salvar
    session[:velho] = params[:velho].nil? ? false : params[:velho]
    session[:novo] = params[:novo].nil? ? false : params[:novo]

    head :ok
  end

  private

  def set_versiculo
    @versiculo = @versiculo_service.versiculo(session[:velho], session[:novo])
  end

  def set_service
    @versiculo_service = VersiculoService.new
  end
end
