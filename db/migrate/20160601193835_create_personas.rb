class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :Primernombre
      t.string :Segundonombre
      t.string :Primerapellido
      t.string :Segundoapellido
      t.integer :Edad
      t.string :Tiposanguineo
      t.string :Foto
      t.string :Cedula
      t.string :Direccion
      t.string :Estadocivil
      t.integer :Celular
      t.integer :Telefono
      t.string :Genero
      t.integer :Estado
      t.references :Municipio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
