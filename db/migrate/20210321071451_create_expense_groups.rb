class CreateExpenseGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :expense_groups do |t|
      t.integer :expense_id
      t.integer :group_id
      t.timestamps
    end
  end
end
