class CreateRegimes < ActiveRecord::Migration
  def change
    create_table :regimes do |t|
      t.string :Regimen
      t.string :Descripcion

      t.timestamps null: false
    end
  end
end
