json.extract! actividad, :id, :act_para, :trabajo, :fecha, :campo, :fitosanitario, :dosis, :cantidad, :litros_caldo, :plaga, :justifica_tratamiento, :numero_lote, :bodega, :det_med_no_quimica, :tipo_actuacion, :intensidad_actuacion, :fecha_actuacion, :trabajador, :maquina, :horas, :minutos, :notas, :created_at, :updated_at
json.url actividad_url(actividad, format: :json)
