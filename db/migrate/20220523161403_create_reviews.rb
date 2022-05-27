class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :content
      t.float :rating
      t.references :offer
      t.timestamps
    end
    #add_foreign_key "reviews", "restaurants"
  end
end
