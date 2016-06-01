class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.references :Persona, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
