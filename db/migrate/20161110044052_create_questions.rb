class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :lesson_id, index: true

      t.timestamps
    end
  end
end
