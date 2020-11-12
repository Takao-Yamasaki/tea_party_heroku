class ExperiencesController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  PER_PAGE = 10
  def index
    @q = Experience.ransack(params[:q])
    @experiences = Experience.page(params[:page]).per(PER_PAGE)
  end

  def new
    @experience = Experience.new
  end

  def create
    Experience.create(experience_params)
    redirect_to action: :index
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    experience = Experience.find(params[:id])
    experience.update(experience_params)
    redirect_to action: :index
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    redirect_to action: :index
  end

  private
  def experience_params
    params.require(:experience).permit(:title, :fee, :prefecture, :region, :content, :start_datetime, :finish_datetime, :language)
  end
end