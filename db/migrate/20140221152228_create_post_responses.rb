class CreatePostResponses < ActiveRecord::Migration
  def change
    create_table :post_responses do |t|
      t.integer :post_id
      t.integer :user_id
      t.string :type
      t.text :response

      t.timestamps
    end
  end
end
