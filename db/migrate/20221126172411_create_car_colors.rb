class CreateCarColors < ActiveRecord::Migration[7.0]
  def change
    create_table :car_colors do |t|
      t.references :car_type, index: true
      t.string :color

      t.timestamps
    end
  end
end
