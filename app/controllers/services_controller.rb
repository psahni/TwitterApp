class ServicesController < ApplicationController

  def index
  end
  
  def create
    omniauth = request.env['omniauth.auth']
    puts "==> Inside callback [Twitter] "
    logger.info("==> ")
    logger.info omniauth['user_info']
    render :text => omniauth.to_yaml
  end
end
