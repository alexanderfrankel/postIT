class CreateRequestsTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :student
      t.string :location

      t.timestamps
    end
  end
end
