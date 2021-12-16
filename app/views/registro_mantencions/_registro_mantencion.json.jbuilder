json.extract! registro_mantencion, :id, :nombre, :descripcion, :inspeccion_oficial, :fecha, :costo, :factura, :tipo_mantencions_id, :maquinaria_id, :created_at, :updated_at
json.url registro_mantencion_url(registro_mantencion, format: :json)
