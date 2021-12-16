class CreateTipoTrabajadors < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_trabajadors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
