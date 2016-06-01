class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.references :Country, index: true, foreign_key: true
      t.string :Departamento
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
