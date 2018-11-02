class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_line_1
      t.string :address_line_2
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
