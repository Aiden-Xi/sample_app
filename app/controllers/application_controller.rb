class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "welcome ruby on rails 5"
  end

end
