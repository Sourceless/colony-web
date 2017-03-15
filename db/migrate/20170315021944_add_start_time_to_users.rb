class AddStartTimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :start_time, :integer
  end
end
