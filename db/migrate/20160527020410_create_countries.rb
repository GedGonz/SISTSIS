class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :Pais
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
