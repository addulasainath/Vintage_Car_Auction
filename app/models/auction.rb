class Auction < ApplicationRecord

  belongs_to :car_color
  belongs_to :car_type
  belongs_to :car_model
  belongs_to :bid_type

  has_one_attached :image
end
