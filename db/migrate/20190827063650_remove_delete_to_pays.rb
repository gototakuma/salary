class RemoveDeleteToPays < ActiveRecord::Migration[5.1]
  def change
    remove_column :pays, :overtime_pay, :string
    remove_column :pays, :integer, :string
    remove_column :pays, :payalert_box, :string
    remove_column :pays, :boolean, :string
    remove_column :pays, :overtime, :string
    remove_column :pays, :datetime, :string
  end
end
