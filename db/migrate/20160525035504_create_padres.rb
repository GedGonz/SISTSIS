class CreatePadres < ActiveRecord::Migration
  def change
    create_table :padres do |t|
      t.references :Persona, index: true, foreign_key: true
      t.references :Estudiante, index: true, foreign_key: true
      t.string :Parentesco

      t.timestamps null: false
    end
  end
end
