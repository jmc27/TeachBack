class CreateQuizAnswers < ActiveRecord::Migration
  def change
    create_table :quiz_answers do |t|
      t.integer :user_id
      t.integer :quiz_question_id
      t.string :type
      t.text :body

      t.timestamps
    end
  end
end
