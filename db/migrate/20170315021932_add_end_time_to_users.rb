class AddEndTimeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :end_time, :integer
  end
end
