class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :games, null: false, default: 0
      t.integer :wins, null: false, default: 0
      t.integer :loses, null: false, default: 0
      t.integer :draws, null: false, default: 0

      t.timestamps
    end
  end
end
