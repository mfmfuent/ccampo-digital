class CreateAsesors < ActiveRecord::Migration[6.1]
  def change
    create_table :asesors do |t|
      t.string :nombre
      t.string :apellido_materno
      t.string :apellido_paterno
      t.string :rut
      t.string :email
      t.string :telefono
      t.string :numero_inscripcion
      t.string :tipo_representacion
      t.references :explotacions, null: false, foreign_key: true

      t.timestamps
    end
  end
end
