class CreateOpcions < ActiveRecord::Migration
  def change
    create_table :opcions do |t|
      t.references :Modulo, index: true, foreign_key: true
      t.string :Opcion
      t.string :Descripcion
      t.integer :Id_Padre
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
