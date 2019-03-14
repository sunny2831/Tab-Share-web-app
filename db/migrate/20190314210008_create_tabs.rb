class CreateTabs < ActiveRecord::Migration[5.2]
  def change
    create_table :tabs do |t|
      t.float :tab_total, null: false
      t.float :initial_amount_owed, null: false
      t.integer :owed_by_user_id, null: false
      t.integer :owed_to_user_id, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
