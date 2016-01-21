class AddValuesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :message, :text
    add_column :posts, :time_to_post, :string
    add_column :posts, :date_to_post, :string
    add_column :posts, :audience, :string
    add_column :posts, :location, :string
  end
end
