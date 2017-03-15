class AddWorkDaysToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :work_days, :string
  end
end
