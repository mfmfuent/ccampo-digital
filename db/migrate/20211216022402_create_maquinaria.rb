class CreateMaquinaria < ActiveRecord::Migration[6.1]
  def change
    create_table :maquinaria do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipo_maquinaria
      t.string :marca
      t.string :modelo
      t.binary :alquilada
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
