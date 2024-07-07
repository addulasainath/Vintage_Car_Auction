class CarColor < ApplicationRecord
  belongs_to :car_type
  validates_presence_of :color_name

  def name
    color_name
  end
end
