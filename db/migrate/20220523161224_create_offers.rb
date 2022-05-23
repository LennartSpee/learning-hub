class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.float :price
      t.integer :duration
      t.text :description
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
