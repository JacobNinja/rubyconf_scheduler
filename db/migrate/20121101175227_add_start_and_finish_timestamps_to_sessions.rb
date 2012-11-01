class AddStartAndFinishTimestampsToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :started_at, :datetime
    add_column :sessions, :completed_at, :datetime
  end
end
