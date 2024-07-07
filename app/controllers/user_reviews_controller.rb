class UserReviewsController < ApplicationController

  def index
    @user_reviews = UserBidReview.where(auction_id: params[:auction_id]).all
  end

  def new
    @auction_id = params[:auction_id]
    @user_review = UserBidReview.new
  end

  def create
    @user_review = UserBidReview.new(user_bid_reviews_params)
    @user_review.user = current_user

    if @user_review.save
      redirect_to user_reviews_path, notice: "Review added successfully."
    else
      render :new
    end
  end

  private

  def user_bid_reviews_params
    params.require(:user_bid_review).permit(:comment, :auction_id)
  end
end
