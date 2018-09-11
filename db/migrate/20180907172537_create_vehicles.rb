class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :color
      t.references :users, foreign_key: true
      t.timestamps
    end
  end
end
