class HostsController < ApplicationController
  def new
    @host = Host.new
  end

  def create
    Host.create(host_params)
  end

  private
  def host_params
    params.require(:host).permit(:first_name, :last_name, :email, :image_url, :password )
  end
end
