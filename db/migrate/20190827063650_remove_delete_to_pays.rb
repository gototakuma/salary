class RemoveDeleteToPays < ActiveRecord::Migration[5.1]
  def change
    remove_column :pays, :overtime_pay, :integer
    remove_column :pays, :payalert_box, :boolean
    remove_column :pays, :overtime, :datetime
  end
end
