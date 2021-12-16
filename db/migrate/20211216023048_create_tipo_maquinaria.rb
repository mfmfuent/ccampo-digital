class CreateTipoMaquinaria < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_maquinaria do |t|
      t.string :nombre
      t.string :descripcion
      t.references :maquinaria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
