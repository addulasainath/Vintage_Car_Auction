class AuctionsController < ApplicationController

  def index
    auctions = Auction.all
    @auctions = if params[:search].present?
                  filter_auctions = auctions
                  filter_auctions = auctions.where(car_type_id: params[:search][:car_type_id]) if params[:search][:car_type_id].present?
                  filter_auctions = auctions.where(car_color_id: params[:search][:car_color_id]) if params[:search][:car_color_id].present?
                  filter_auctions = auctions.where(car_model_id: params[:search][:car_model_id]) if params[:search][:car_model_id].present?
                  filter_auctions = auctions.where(bid_type_id: params[:search][:bid_type_id]) if params[:search][:bid_type_id].present?

                  filter_auctions
                else
                  auctions
                end
  end
end
