class AddValuesToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :drink_name, :string
    add_column :drinks, :category, :string
    add_column :drinks, :image, :string
  end
end
