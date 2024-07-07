class AddColumnPerformanceInCarTypes < ActiveRecord::Migration[7.0]
  def change
    add_column :car_types, :performance, :string
    add_column :car_types, :thermal_management, :string
    add_column :car_types, :thermal_comfort, :string
    add_column :car_types, :safety, :string
  end
end
