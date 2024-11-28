class AddWalletToUsers < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :wallet, :decimal 
  end
end
