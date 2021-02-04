class CreatePiggyBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :piggy_banks do |t|
      t.string :name
      t.integer :user_id
      t.float :goal
      t.float :current_balance
      t.string :category
      t.timestamps
    end
  end
end
