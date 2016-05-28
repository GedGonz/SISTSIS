class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :Departamento
      t.string :Descripcion
      t.references :Pais, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
