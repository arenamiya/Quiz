class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer :q_id
      t.string :question
      t.string :description
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :answer_d
      t.string :answer_e
      t.string :answer_f
      t.boolean :answer_a_correct
      t.boolean :answer_b_correct
      t.boolean :answer_c_correct
      t.boolean :answer_d_correct
      t.boolean :answer_e_correct
      t.boolean :answer_f_correct
      t.string :explanation
      t.string :tip
      t.string :tags
      t.string :category
      t.string :difficulty

      t.timestamps
    end
  end
end
