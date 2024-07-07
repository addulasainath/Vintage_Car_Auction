class CreateUserBids < ActiveRecord::Migration[7.0]
  def change
    create_table :user_bids do |t|
      t.references :user, index: true
      t.references :auction, index: true
      t.float :amount

      t.timestamps
    end
  end
end
