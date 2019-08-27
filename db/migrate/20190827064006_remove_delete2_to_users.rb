class RemoveDelete2ToUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :job, :string
    remove_column :users, :string, :string
    remove_column :users, :basic_overtime_pay, :string
    remove_column :users, :integer, :string
    remove_column :users, :uid, :string
    remove_column :users, :string, :string
    remove_column :users, :image, :string
    remove_column :users, :string, :string
    remove_column :users, :encrypted_password, :string
    remove_column :users, :string, :string
    remove_column :users, :reset_password_token, :string
    remove_column :users, :string, :string
    remove_column :users, :note, :string
    remove_column :users, :string, :string
  end
end
