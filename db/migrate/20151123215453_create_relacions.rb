class CreateRelacions < ActiveRecord::Migration
  def change
    create_table :relacions do |t|
      t.references :palabras, index: true, foreign_key: true
      t.references :textos, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
