class HostsController < ApplicationController
  def index
    @hosts = Host.order(:id)
  end

  def new
    @host = Host.new
  end

  def create
    Host.create(host_params)
    redirect_to action: :index
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    host = Host.find(params[:id])
    host.update(host_params)
    redirect_to action :index
  end

  def destroy
    host = Host.find(params[:id])
    host.destroy
    redirect_to action: :index
  end

  private
  def host_params
    params.require(:host).permit(:first_name, :last_name, :email, :image_url, :password )
  end
end
