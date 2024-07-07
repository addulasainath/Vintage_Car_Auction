class UserBidsController < ApplicationController

  def index
    @auction_id = params[:auction_id]
    @user_bids = UserBid.where(auction_id: @auction_id).order("amount desc").all
  end

  def new
    @user_bid = UserBid.new
    @auction_id = params[:auction_id]
  end

  def create
    @user_bid = UserBid.new(user_bids_params)
    @user_bid.user = current_user

    if @user_bid.save
      redirect_to user_bids_path, notice: "Bid added successfully."
    else
      render :new
    end
  end

  private

  def user_bids_params
    params.require(:user_bid).permit(:amount, :auction_id)
  end
end
