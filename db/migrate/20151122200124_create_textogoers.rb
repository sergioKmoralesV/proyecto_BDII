class CreateTextogoers < ActiveRecord::Migration
  def change
    create_table :textogoers do |t|

      t.timestamps null: false
    end
  end
end
