class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :alcoholic
      t.string :nonalcoholic

      t.timestamps null: false
    end
  end
end
