class AddSubmissionCountToSurveys < ActiveRecord::Migration[5.0]
  def change
    add_column :surveys, :submissions_count, :integer
  end
end
