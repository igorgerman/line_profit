class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.text :question_text
      t.string :option1
      t.string :option2
      t.integer :restaurant_id

      t.timestamps

    end
  end
end
