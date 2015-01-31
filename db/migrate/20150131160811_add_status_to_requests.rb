class AddStatusToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :status, :integer, :default => 1
  end
end
