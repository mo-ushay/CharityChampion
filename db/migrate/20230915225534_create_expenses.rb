class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.references :beneficiary, null: false, foreign_key: true
      t.float :amount
      t.text :purpose

      t.timestamps
    end
  end
end
