class CreateFitosanitarios < ActiveRecord::Migration[6.1]
  def change
    create_table :fitosanitarios do |t|
      t.string :nombre
      t.string :registro
      t.string :funcion
      t.string :fabricante
      t.date :fecha_caducidad
      t.string :ambito_utilizacion
      t.float :unidades
      t.float :litros_caldo_defecto
      t.string :cultivo
      t.float :dosis
      t.float :unidades_dosis
      t.string :periodo_seguridad
      t.binary :ficha_tecnica
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
