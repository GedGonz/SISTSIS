class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.references :Persona, index: true, foreign_key: true
      t.references :Rol, index: true, foreign_key: true
      t.string :Usuario
      t.string :Password
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
