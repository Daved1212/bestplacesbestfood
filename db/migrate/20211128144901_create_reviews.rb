class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :body, null: false
      
      t.belongs_to :user, null: false
      t.belongs_to :restaurant, null: false
      t.timestamps
    end
  end
end
