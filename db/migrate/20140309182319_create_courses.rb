class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
	t.integer :owner_id
	t.string :title
    end
  end
end
