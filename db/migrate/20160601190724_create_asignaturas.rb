class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas do |t|
      t.string :Titulo
      t.string :Descripcion
      t.string :Tipoasignatura
      t.integer :Credito
      t.integer :Prerrequisito
      t.integer :Prescedencia

      t.timestamps null: false
    end
  end
end
