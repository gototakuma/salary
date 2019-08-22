class AddPayNoteToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :paynote, :string
  end
end
