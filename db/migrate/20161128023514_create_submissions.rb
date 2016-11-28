class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :survey_id
      t.string :selection

      t.timestamps

    end
  end
end
