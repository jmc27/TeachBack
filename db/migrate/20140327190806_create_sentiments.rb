class CreateSentiments < ActiveRecord::Migration
  def change
    create_table :sentiments do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
