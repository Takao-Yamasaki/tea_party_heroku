class ReviewsController < ApplicationController
  def new
    @experience = Experience.find(params[:experience_id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to controller: :experiences, action: :index
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating).merge(experience_id: params[:experience_id], user_id: current_user.id)
  end
end
