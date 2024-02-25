module DesafiosHelper
  def switch_velho
    session[:velho].nil? ? true : session[:velho]
  end

  def switch_novo
    session[:novo].nil? ? true : session[:novo]
  end
end
