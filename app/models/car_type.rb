class CarType < ApplicationRecord
  has_many :car_colors, dependent: :destroy
end
