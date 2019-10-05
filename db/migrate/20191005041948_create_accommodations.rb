class CreateAccommodations < ActiveRecord::Migration[6.0]
  def change
    create_table :accommodations do |t|
      t.string :name, null: false
      t.string :estate_type, null: false
      t.string :share_type, null: false
      t.string :summary
      t.text :description
      t.integer :num_of_room
      t.integer :guest_capicity
      t.integer :num_of_bed
      t.integer :num_of_toilet

      t.string :country
      t.string :state
      t.string :city
      t.string :district
      t.string :street
      t.string :number
      t.string :building
      t.string :room
      t.string :latitude
      t.string :longitude
      t.references :user
      t.timestamps
    end
  end
end
