class CreateTabSplits < ActiveRecord::Migration[5.2]
  def change
    create_table :tab_splits do |t|
      t.integer :user_id, null: false
      t.integer :tab_id, null: false
      t.boolean :payment_pending, null: false

      t.timestamps
    end
    add_index :tab_splits, :user_id
    add_index :tab_splits, :tab_id
  end
end
