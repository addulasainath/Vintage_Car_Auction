class CreateUserBidReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :user_bid_reviews do |t|
      t.references :user, index: true
      t.references :auction, index: true
      t.text :comment

      t.timestamps
    end
  end
end
