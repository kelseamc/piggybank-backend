class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :account_number
      t.float :total

      t.timestamps
    end
  end
end
