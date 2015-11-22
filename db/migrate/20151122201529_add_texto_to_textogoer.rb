class AddTextoToTextogoer < ActiveRecord::Migration
  def change
    add_reference :textogoers, :texto, index: true, foreign_key: true
    add_reference :textogoers, :palabra, index: true, foreign_key: true
  end
end
