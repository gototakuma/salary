class AddCheckBoxToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :nextday_box, :boolean
  end
end
