class CreateUsuarioOpcions < ActiveRecord::Migration
  def change
    create_table :usuario_opcions do |t|
      t.references :Usuario, index: true, foreign_key: true
      t.references :Opcion, index: true, foreign_key: true
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
