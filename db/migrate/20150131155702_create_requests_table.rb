class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :student
      t.string :location
      t.integer :status
      t.string :tag
      t.datetime :coach_in
      t.datetime :coach_out
      t.refereces :coach

      t.timestamps
    end
  end
end
