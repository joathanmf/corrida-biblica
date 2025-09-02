# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_session

  def set_session
    session[:velho] = true if session[:velho].nil?
    session[:novo] = true if session[:novo].nil?
  end
end
