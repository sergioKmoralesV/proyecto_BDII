class DropRelacions < ActiveRecord::Migration
  def change
    drop_table :relacions
  end
end
