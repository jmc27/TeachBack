class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :lecture_id
      t.integer :user_id
      t.string :type
      t.text :post
      t.integer :views
      t.integer :responses
      t.integer :student_likes
      t.integer :instructor_likes

      t.timestamps
    end
  end
end
