class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :Primer_nombre
      t.string :Segundo_nombre
      t.string :Primer_apellido
      t.string :Segundo_apellido
      t.integer :Edad
      t.string :Tipo_sanguineo
      t.string :Foto
      t.string :Cedula
      t.string :Direccion
      t.string :Estado_civil
      t.integer :Celular
      t.integer :Telefono
      t.string :Genero
      t.integer :Estado
      t.references :Municipio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
