class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :title
      t.text :description
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
