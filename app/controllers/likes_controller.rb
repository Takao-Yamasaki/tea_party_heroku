class LikesController < ApplicationController
  def create
    current_user.likes.create!(experience_id: params[:experience_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.likes.find_by(experience_id: params[:experience_id]).destroy
    redirect_back(fallback_location: root_path)
  end
end