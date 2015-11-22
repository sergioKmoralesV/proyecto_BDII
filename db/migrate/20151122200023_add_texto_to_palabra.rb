class AddTextoToPalabra < ActiveRecord::Migration
  def change
    add_reference :palabras, :texto, index: true, foreign_key: true
  end
end
