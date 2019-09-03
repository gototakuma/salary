class AddNightsalaryToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :night_salary, :integer
  end
end
