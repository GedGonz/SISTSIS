class CreateModulos < ActiveRecord::Migration
  def change
    create_table :modulos do |t|
      t.string :Modulo
      t.string :Descripcion
      t.integer :Estado

      t.timestamps null: false
    end
  end
end
