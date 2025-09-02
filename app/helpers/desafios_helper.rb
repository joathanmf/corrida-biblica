# frozen_string_literal: true

module DesafiosHelper
  def switch_velho
    session[:velho].nil? || session[:velho]
  end

  def switch_novo
    session[:novo].nil? || session[:novo]
  end
end
