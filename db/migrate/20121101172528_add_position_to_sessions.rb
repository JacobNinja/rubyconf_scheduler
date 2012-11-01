class AddPositionToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :position, :integer, :null => false, :default => 0
  end
end
