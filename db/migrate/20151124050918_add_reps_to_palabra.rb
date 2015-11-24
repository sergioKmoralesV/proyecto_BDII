class AddRepsToPalabra < ActiveRecord::Migration
  def change
    add_column :palabras, :reps, :integer
  end
end
