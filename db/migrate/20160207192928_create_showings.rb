class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.integer :theatre_id
      t.integer :movie_id
      t.datetime :dateAndTime

      t.timestamps
    end
  end
end
