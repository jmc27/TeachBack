class CreateCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.integer :user_id
      t.integer :course_id
      t.string :enrollment_type
      
      t.timestamps
    end
  end
end
