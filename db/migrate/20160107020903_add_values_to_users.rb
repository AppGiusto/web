class AddValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :zip_code, :string
    add_column :users, :profile_image, :string
  end
end
