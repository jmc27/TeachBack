class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password
      t.string :email
      t.boolean :email_verified
      t.string :image_url

      t.timestamps
    end
  end
end
