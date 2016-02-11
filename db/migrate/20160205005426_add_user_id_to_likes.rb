class AddUserIdToLikes < ActiveRecord::Migration
  def change
  	add_column :likes, :user_id, :string
  end
end
