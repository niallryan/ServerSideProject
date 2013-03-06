class AddProfile < ActiveRecord::Migration
  def up
    add_column :users, :forename, :string
    add_column :users, :surname, :string
    add_column :users, :screen_name, :string
    add_column :users, :location, :string
    add_column :users, :user_id, :integer
  end

  def down
    remove_column :users, :forename
    remove_column :users, :surname
    remove_column :users, :screen_name
    remove_column :users, :location
    remove_column :users, :user_id
  end

end
