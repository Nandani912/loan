class CreateLendings < ActiveRecord::Migration[7.2]
  def change
    create_table :lendings do |t|
      t.float :amount
      t.float :interest_rate
      t.integer :state,default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
