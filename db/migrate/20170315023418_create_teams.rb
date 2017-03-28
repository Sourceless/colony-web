class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :account, foreign_key: true
      t.integer :manager_id

      t.timestamps
    end

    add_index :teams, :manager_id
  end
end
