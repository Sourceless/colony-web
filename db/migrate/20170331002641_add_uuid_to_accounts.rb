class AddUuidToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :uuid, :string
  end
end
