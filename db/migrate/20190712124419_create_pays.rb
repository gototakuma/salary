class CreatePays < ActiveRecord::Migration[5.1]
  def change
    create_table :pays do |t|
      t.integer :started
      t.integer :finished
      t.date :worked_on
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
