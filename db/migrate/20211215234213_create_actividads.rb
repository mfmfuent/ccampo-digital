class CreateActividads < ActiveRecord::Migration[6.1]
  def change
    create_table :actividads do |t|
      t.string :act_para
      t.string :trabajo
      t.date :fecha
      t.string :campo
      t.string :fitosanitario
      t.float :dosis
      t.float :cantidad
      t.float :litros_caldo
      t.string :plaga
      t.string :justifica_tratamiento
      t.string :numero_lote
      t.string :bodega
      t.string :det_med_no_quimica
      t.string :tipo_actuacion
      t.string :intensidad_actuacion
      t.date :fecha_actuacion
      t.string :trabajador
      t.string :maquina
      t.time :horas
      t.time :minutos
      t.text :notas

      t.timestamps
    end
  end
end
