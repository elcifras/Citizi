class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    
  end
end
