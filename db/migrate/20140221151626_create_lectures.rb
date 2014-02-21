class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.integer :course_id
      t.date :date
      t.text :info
      t.integer :total_students

      t.timestamps
    end
  end
end
