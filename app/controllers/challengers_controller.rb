# frozen_string_literal: true

class ChallengersController < ApplicationController
  before_action :set_service, :set_verse, only: %i[verse]

  def index; end

  def challenger; end

  def verse
    render turbo_frame: 'verse', locals: { verse: @verse }
  end

  def config_modal; end

  def save_config
    session[:old] = params[:old].nil? ? false : params[:old]
    session[:new] = params[:new].nil? ? false : params[:new]

    head :ok
  end

  private

  def set_verse
    @verse = @verse_service.verse(session[:old], session[:new])
  end

  def set_service
    @verse_service = verseService.new
  end
end
