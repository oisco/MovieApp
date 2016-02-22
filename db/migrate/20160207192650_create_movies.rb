class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.text :trailer
      t.integer :length

      t.timestamps
    end
  end
end



