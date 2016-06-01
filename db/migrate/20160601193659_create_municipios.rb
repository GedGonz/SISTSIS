class CreateMunicipios < ActiveRecord::Migration
  def change
    create_table :municipios do |t|
      t.references :Departamento, index: true, foreign_key: true
      t.string :Municipio
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
