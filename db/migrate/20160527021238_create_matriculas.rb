class CreateMatriculas < ActiveRecord::Migration
  def change
    create_table :matriculas do |t|
      t.references :Estudiante, index: true, foreign_key: true
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
