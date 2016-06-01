class CreateOpcions < ActiveRecord::Migration
  def change
    create_table :opcions do |t|
      t.string :Opcion
      t.string :Descripcion
      t.integer :Id_Padre
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
