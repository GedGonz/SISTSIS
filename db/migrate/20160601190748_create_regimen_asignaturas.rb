class CreateRegimenAsignaturas < ActiveRecord::Migration
  def change
    create_table :regimen_asignaturas do |t|
      t.references :Asignatura, index: true, foreign_key: true
      t.references :Regime, index: true, foreign_key: true
      t.string :Codigo
      t.integer :hrsemana
      t.integer :hrtotales
      t.integer :Estado
      t.string :Planestudio

      t.timestamps null: false
    end
  end
end
