class AddSemesterToCourse < ActiveRecord::Migration
  def change
	add_column :courses, :semester, :string	
  end
end
