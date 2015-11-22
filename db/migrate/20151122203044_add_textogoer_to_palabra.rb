class AddTextogoerToPalabra < ActiveRecord::Migration
  def change
    add_reference :palabras, :textogoer, index: true, foreign_key: true
  end
end
