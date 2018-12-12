class AddDescriptionAndPriceToSushis < ActiveRecord::Migration
  def change
    add_column :sushis, :price, :string
    add_column :sushis, :description, :string
  end
end
