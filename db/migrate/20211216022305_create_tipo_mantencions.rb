class CreateTipoMantencions < ActiveRecord::Migration[6.1]
  def change
    create_table :tipo_mantencions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
