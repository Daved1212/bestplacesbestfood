class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.text :description, null: false
      t.string :photo_url, null: false
      t.string :yelp_id, null: false
      t.belongs_to :food, null: false 
      t.timestamps
    end
  end
end