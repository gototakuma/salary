class AddPayalertBoxToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :payalert_box, :boolean
  end
end
