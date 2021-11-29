class CreateUserReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :user_reviews do |t|
      t.text :body, null: false
      t.integer :rating, null: false
      t.timestamps
    end
  end
end
