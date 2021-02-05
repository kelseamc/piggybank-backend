class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.integer :user_id
      t.float :amount
      t.string :category
      t.timestamps
    end
  end
end
