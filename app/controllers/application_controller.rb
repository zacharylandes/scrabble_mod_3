class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :error

  def error
    render :error
  end


end
