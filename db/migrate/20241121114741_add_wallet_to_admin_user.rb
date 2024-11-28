class AddWalletToAdminUser < ActiveRecord::Migration[7.2]
  def change
    add_column :admin_users, :wallet, :float
  end
end
