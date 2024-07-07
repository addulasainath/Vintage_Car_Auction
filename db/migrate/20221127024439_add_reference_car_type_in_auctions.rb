class AddReferenceCarTypeInAuctions < ActiveRecord::Migration[7.0]
  def change
    add_reference :auctions, :car_type, index: true
  end
end
