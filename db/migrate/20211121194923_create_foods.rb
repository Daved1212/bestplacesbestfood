class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.text :description, null: false 
      t.string :photo_url, null: false
      
      t.timestamps
    end
  end
end
