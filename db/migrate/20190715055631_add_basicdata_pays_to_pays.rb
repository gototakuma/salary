class AddBasicdataPaysToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :salary, :integer
    add_column :pays, :overtime_pay, :integer
    add_column :pays, :overtime, :datetime
  end
end
