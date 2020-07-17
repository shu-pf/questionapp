class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :question
      t.string :A
      t.string :B
      t.string :C
      t.string :D
      t.string :anser

      t.timestamps
    end
  end
end
