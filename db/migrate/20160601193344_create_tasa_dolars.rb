class CreateTasaDolars < ActiveRecord::Migration
  def change
    create_table :tasa_dolars do |t|
      t.decimal :Tasa
      t.integer :Dia
      t.integer :Mes
      t.integer :Ano

      t.timestamps null: false
    end
  end
end
