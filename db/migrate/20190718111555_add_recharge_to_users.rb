class AddRechargeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :recharge, :integer
  end
end
