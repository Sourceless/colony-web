class ChangeOwnerIdOnAccounts < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :owner_id, :int, null: true
  end
end
