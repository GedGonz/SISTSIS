class CreateEstudianteTrabajos < ActiveRecord::Migration
  def change
    create_table :estudiante_trabajos do |t|
      t.references :Estudiante, index: true, foreign_key: true
      t.string :Nombre_lugar
      t.string :Cargo
      t.string :Tiempo
      t.integer :Telefono
      t.string :Direccion

      t.timestamps null: false
    end
  end
end
