class AddColumnBidTypeToAuctions < ActiveRecord::Migration[7.0]
  def change
    add_reference :auctions, :bid_type, index: true
    add_reference :auctions, :car_color, index: true
  end
end
