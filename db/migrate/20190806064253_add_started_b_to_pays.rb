class AddStartedBToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :started_b, :integer
    add_column :pays, :finished_b, :integer
  end
end
