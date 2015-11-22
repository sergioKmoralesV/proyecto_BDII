class CreateTextos < ActiveRecord::Migration
  def change
    create_table :textos do |t|
      t.string :ruta
      t.string :nombre

      t.timestamps null: false
    end
  end
end
