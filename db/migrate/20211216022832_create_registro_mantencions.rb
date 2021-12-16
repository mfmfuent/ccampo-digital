class CreateRegistroMantencions < ActiveRecord::Migration[6.1]
  def change
    create_table :registro_mantencions do |t|
      t.string :nombre
      t.string :descripcion
      t.binary :inspeccion_oficial
      t.date :fecha
      t.float :costo
      t.string :factura
      t.references :tipo_mantencions, null: false, foreign_key: true
      t.references :maquinaria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
