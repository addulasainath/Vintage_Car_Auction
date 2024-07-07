class RemoveColumnColorTypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :car_colors, :color

    add_column :car_colors, :color_name, :string
  end
end
