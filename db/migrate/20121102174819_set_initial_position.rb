class SetInitialPosition < ActiveRecord::Migration
  def up
    execute("update sessions set position = id")
  end

  def down
  end
end
