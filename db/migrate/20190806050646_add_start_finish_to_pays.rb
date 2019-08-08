class AddStartFinishToPays < ActiveRecord::Migration[5.1]
  def change
    add_column :pays, :started_a, :integer
    add_column :pays, :finished_a, :integer
  end
end
