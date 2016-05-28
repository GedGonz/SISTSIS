class CreateRegimenAsignaturas < ActiveRecord::Migration
  def change
    create_table :regimen_asignaturas do |t|
      t.references :Asignatura, index: true, foreign_key: true
      t.references :Regimen, index: true, foreign_key: true
      t.string :Codigo
      t.integer :Hrsemana
      t.integer :Hrtotales
      t.integer :Estado
      t.string :Planestudio

      t.timestamps null: false
    end
  end
end
