class CreateComputersTable < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :location
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
