class CreateRelacions < ActiveRecord::Migration
  def change
    create_table :relacions do |t|
      t.references :palabra, index: true, foreign_key: true
      t.references :texto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
