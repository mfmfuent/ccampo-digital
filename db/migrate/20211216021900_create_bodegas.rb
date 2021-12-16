class CreateBodegas < ActiveRecord::Migration[6.1]
  def change
    create_table :bodegas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :direccion
      t.string :comuna
      t.string :region
      t.string :pais
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
