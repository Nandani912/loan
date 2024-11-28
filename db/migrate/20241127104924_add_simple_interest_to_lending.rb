class AddSimpleInterestToLending < ActiveRecord::Migration[7.2]
  def change
    add_column :lendings, :simple_interest, :decimal,default: 0.0
  end
end
