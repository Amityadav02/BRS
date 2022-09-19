class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :name
      t.integer :registration
      t.integer :total_seats
      t.string :source
      t.string :destination

      t.timestamps
    end
  end
end
