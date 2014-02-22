class ChangeAssociations < ActiveRecord::Migration
  def change
	remove_column :notes, :user_id

	change_table :notes do |n|
		n.belongs_to :user
	end
  end
end
