class CreateDocenteEstudios < ActiveRecord::Migration
  def change
    create_table :docente_estudios do |t|
      t.references :Docente, index: true, foreign_key: true
      t.string :Estudio
      t.integer :Ano

      t.timestamps null: false
    end
  end
end
