class RemoveDelete3ToPays < ActiveRecord::Migration[5.1]
  def change
    remove_column :pays, :reset_password_sent_at, :datetime
    remove_column :pays, :remember_created_at, :datetime
  end
end
