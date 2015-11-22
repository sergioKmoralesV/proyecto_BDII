class CreatePalabras < ActiveRecord::Migration
  def change
    create_table :palabras do |t|
      t.string :text
      t.timestamps null: false
    end
  end
end
