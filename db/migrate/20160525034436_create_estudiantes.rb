class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.references :Persona, index: true, foreign_key: true
      t.string :Carnet
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
