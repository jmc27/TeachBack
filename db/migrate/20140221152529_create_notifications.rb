class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :type
      t.integer :course_id
      t.integer :lecture_id
      t.integer :user_id
      t.text :message

      t.timestamps
    end
  end
end
