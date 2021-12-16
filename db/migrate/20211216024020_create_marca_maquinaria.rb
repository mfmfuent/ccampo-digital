class CreateMarcaMaquinaria < ActiveRecord::Migration[6.1]
  def change
    create_table :marca_maquinaria do |t|
      t.string :marca
      t.string :modelo
      t.date :fecha_fabricacion
      t.references :maquinaria, null: false, foreign_key: true

      t.timestamps
    end
  end
end
