class ChangeWalletToFloatInUsers < ActiveRecord::Migration[7.2]
  def change
    change_column :users, :wallet, :float
  end
end
