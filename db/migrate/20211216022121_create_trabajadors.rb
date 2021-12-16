class CreateTrabajadors < ActiveRecord::Migration[6.1]
  def change
    create_table :trabajadors do |t|
      t.string :nombre
      t.string :tipo_trabajador
      t.string :rut
      t.string :carnet_aplicador
      t.string :calificacion
      t.string :asesor
      t.string :email
      t.string :telefono
      t.string :direccion
      t.string :localidad
      t.string :comuna
      t.string :region
      t.string :pais
      t.binary :foto
      t.text :comentarios
      t.references :tipo_trabajadors, null: false, foreign_key: true
      t.references :actividads, null: false, foreign_key: true

      t.timestamps
    end
  end
end
