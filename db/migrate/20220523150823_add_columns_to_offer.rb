class AddColumnsToOffer < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :price, :float
    add_column :offers, :location, :string
    add_column :offers, :description, :text
    add_column :offers, :duration, :integer
    add_column :offers, :title, :string
  end
end
