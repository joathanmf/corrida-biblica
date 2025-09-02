# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_session

  def set_session
    session[:old] = true if session[:old].nil?
    session[:new] = true if session[:new].nil?
  end
end
