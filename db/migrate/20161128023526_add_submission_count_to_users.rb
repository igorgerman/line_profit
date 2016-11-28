class AddSubmissionCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :submissions_count, :integer
  end
end
