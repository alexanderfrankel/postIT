class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :student
      t.string :location
      t.integer :status, default: 1
      t.string :tag
      t.datetime :coach_in
      t.datetime :coach_out
      t.references :coach

      t.timestamps
    end
  end
end
