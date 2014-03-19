class AddLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :username, :string

  end
end
