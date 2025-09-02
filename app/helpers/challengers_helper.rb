# frozen_string_literal: true

module ChallengersHelper
  def switch_old
    session[:old].nil? || session[:old]
  end

  def switch_new
    session[:new].nil? || session[:new]
  end
end
