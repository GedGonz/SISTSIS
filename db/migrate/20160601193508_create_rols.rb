class CreateRols < ActiveRecord::Migration
  def change
    create_table :rols do |t|
      t.string :Rol
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
