class CreateNacionalidads < ActiveRecord::Migration
  def change
    create_table :nacionalidads do |t|
      t.references :Persona, index: true, foreign_key: true
      t.references :Country, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
