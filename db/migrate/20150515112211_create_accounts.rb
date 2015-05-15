class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :費用
      t.string :種類

      t.timestamps null: false
    end
  end
end
