class CreateJobsTable < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.integer :coach_id
      t.integer :request_id

      t.timestamps
    end
  end
end
