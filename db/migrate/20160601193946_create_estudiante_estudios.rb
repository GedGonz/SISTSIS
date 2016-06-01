class CreateEstudianteEstudios < ActiveRecord::Migration
  def change
    create_table :estudiante_estudios do |t|
      t.references :Estudiante, index: true, foreign_key: true
      t.string :Estudio
      t.integer :Ano
      t.string :Presedencia
      t.integer :Tipo

      t.timestamps null: false
    end
  end
end
