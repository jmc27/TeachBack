class CreateQuizQuestions < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.integer :quiz_id
      t.string :type
      t.text :body
      t.timestamps
    end
  end
end
