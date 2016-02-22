class CreateTheatres < ActiveRecord::Migration
  def change
    create_table :theatres do |t|
      t.string :theatreName
      t.text :location
      t.integer :capacity

      t.timestamps
    end
  end
end
