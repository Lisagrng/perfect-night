class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # include Pundit::Authorization
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  # heroku config:set DOMAIN=www.perfect-night.fun
  # heroku config:get DOMAIN
end
