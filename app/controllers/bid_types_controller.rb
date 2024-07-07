class BidTypesController < ApplicationController

  def index
    @bid_types = BidType.all
  end
end
