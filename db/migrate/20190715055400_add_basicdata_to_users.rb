class AddBasicdataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :basic_salary, :integer
    add_column :users, :basic_overtime_pay, :integer
  end
end
