class CreateExplotacions < ActiveRecord::Migration[6.1]
  def change
    create_table :explotacions do |t|
      t.string :nombre_explotacion
      t.string :rut
      t.string :email
      t.string :direccion
      t.string :telefono
      t.string :localidad
      t.string :comuna
      t.string :region
      t.string :pais
      t.string :thumbnail
      t.string :image
      t.string :nacional

      t.timestamps
    end
  end
end
