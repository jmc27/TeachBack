class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.boolean :present
      t.boolean :excused

      t.timestamps
    end
  end
end
