class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.references :car_model, index: true
      t.references :car_make, index: true
      t.date :date
      t.float :minimum_amount
      t.float :maximum_amount

      t.timestamps
    end
  end
end
